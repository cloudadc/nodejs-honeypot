package io.github.cloudadc;

public class TMP {

	public static void main(String[] args) {

		String item = "204|206|208|210|212|214|216|218|220|222";
		
		String[] arrOfStr = item.split("\\|"); 
		
		for (String a : arrOfStr) 
            System.out.println(a);
	}

}
