package io.github.cloudadc;

public class NetInterFace {
	
	private String ip;
	
	private String inter;
	
	private String vlan;
	
	private String tag;

	public NetInterFace(String vlan, String ip, String inter, String tag) {
		super();
		this.ip = ip;
		this.inter = inter;
		this.vlan = vlan;
		this.tag = tag;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getInter() {
		return inter;
	}

	public void setInter(String inter) {
		this.inter = inter;
	}

	public String getVlan() {
		return vlan;
	}

	public void setVlan(String vlan) {
		this.vlan = vlan;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Override
	public String toString() {
		return "NetInterFace [ip=" + ip + ", inter=" + inter + ", vlan=" + vlan + ", tag=" + tag + "]";
	}

}
