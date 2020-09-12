package io.github.cloudadc;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Main implements CommandLineRunner {
	
	static final String VS_DEL = "tmsh delete ltm virtual REPLACE_VS";
	
	static final String VS_CRE_TCP = "tmsh create ltm virtual REPLACE_VS_NAME destination REPLACE_VS_IP:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } ";

	static final String VS_CRE_UDP = "tmsh create ltm virtual REPLACE_VS_NAME destination REPLACE_VS_IP:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }";
	
	static final String VS_CRE_HTTP = "tmsh create ltm virtual REPLACE_VS_NAME destination REPLACE_VS_DESTINATION ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }";
	
	public static void main(String[] args) {
		if(args.length == 0) {
			args = new String[] {"ips"};
			System.out.println("Use the default ips file to keep ip and vs map");
		}
		SpringApplication.run(Main.class, args);
	}

	@Override
	public void run(String... args) throws Exception {

		if (args.length < 1) {
			throw new IllegalArgumentException("At least one argument is necessary");
		}
		
		if(!Files.exists(Paths.get(args[0]))) {
			throw new IllegalArgumentException("The first argument should be a file that contains ips and vs names");
		}
		
		Map<String, List<String>> map = new HashMap<>();
		
		try (Stream<String> stream = Files.lines(Paths.get(args[0]))) {
			 stream.forEach(line -> {	 
				 String[] arrOfStr = line.split(" "); 
				 String vs = arrOfStr[1].trim();
				 String ips = arrOfStr[0].trim();
				 String[] arrOfIps = ips.split("\\."); 
				 String ipPre = arrOfIps[0] + "." + arrOfIps[1] + "." + arrOfIps[2] + ".";
				 String subIps = arrOfIps[3];
				 String[] arrOfSubIps = subIps.split("\\|");
				 List<String> iplist = new ArrayList<>();
				 for(String arr : arrOfSubIps) {
					 iplist.add(ipPre + arr);
				 }
				 map.put(vs, iplist);
			 });
		}
		
		Files.deleteIfExists(Paths.get("tmsh.create.sh"));
		Files.deleteIfExists(Paths.get("tmsh.delete.sh"));
		Files.createFile(Paths.get("tmsh.create.sh"));
		Files.createFile(Paths.get("tmsh.delete.sh"));
		
		map.keySet().forEach(vs -> {
			for (int i = 0 ; i < map.get(vs).size() ; i ++) {
				
				String rule_tcp_name = vs + "_" + map.get(vs).get(i) + "_tcp";
				String rule_udp_name = vs + "_" + map.get(vs).get(i) + "_udp";
				String rule_http_80_name = vs + "_" + map.get(vs).get(i) + "_80_http";
				String rule_http_8080_name = vs + "_" + map.get(vs).get(i) + "_8080_http";
				String vs_del_tcp = VS_DEL.replaceAll("REPLACE_VS", rule_tcp_name); 
				String vs_del_udp = VS_DEL.replaceAll("REPLACE_VS", rule_udp_name); 
				String vs_del_http_80 = VS_DEL.replaceAll("REPLACE_VS", rule_http_80_name); 
				String vs_del_http_8080 = VS_DEL.replaceAll("REPLACE_VS", rule_http_8080_name); 
				
				String vs_cre_tcp = VS_CRE_TCP.replaceAll("REPLACE_VS_NAME", rule_tcp_name);
				vs_cre_tcp = vs_cre_tcp.replaceAll("REPLACE_VS_IP", map.get(vs).get(i));
				
				String vs_cre_udp = VS_CRE_UDP.replaceAll("REPLACE_VS_NAME", rule_udp_name);
				vs_cre_udp = vs_cre_udp.replace("REPLACE_VS_IP", map.get(vs).get(i));
				
				String vs_cre_http_80 = VS_CRE_HTTP.replaceAll("REPLACE_VS_NAME", rule_http_80_name);
				vs_cre_http_80 = vs_cre_http_80.replace("REPLACE_VS_DESTINATION", map.get(vs).get(i) + ":80");
				
				String vs_cre_http_8080 = VS_CRE_HTTP.replaceAll("REPLACE_VS_NAME", rule_http_8080_name);
				vs_cre_http_8080 = vs_cre_http_8080.replace("REPLACE_VS_DESTINATION", map.get(vs).get(i) + ":8080");
				
				try {
					Files.write(Paths.get("tmsh.create.sh"), vs_cre_tcp.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.create.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.create.sh"), vs_cre_udp.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.create.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.create.sh"), vs_cre_http_80.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.create.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.create.sh"), vs_cre_http_8080.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.create.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
					
					Files.write(Paths.get("tmsh.delete.sh"), vs_del_tcp.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.delete.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.delete.sh"), vs_del_udp.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.delete.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.delete.sh"), vs_del_http_80.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.delete.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.delete.sh"), vs_del_http_8080.getBytes(), StandardOpenOption.APPEND);
					Files.write(Paths.get("tmsh.delete.sh"), "\n".getBytes(), StandardOpenOption.APPEND);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
		});
		
		System.out.println("Generated bash 'tmsh.create.sh'");
		System.out.println("Generated bash 'tmsh.delete.sh'");

	}

	
}
