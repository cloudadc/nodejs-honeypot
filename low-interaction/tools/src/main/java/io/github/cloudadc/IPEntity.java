package io.github.cloudadc;

import java.util.List;

public class IPEntity {
	
	private String vlan;
	
	private boolean isCNet;
	
	private List<String> ips;

	public String getVlan() {
		return vlan;
	}

	public void setVlan(String vlan) {
		this.vlan = vlan;
	}

	public boolean isCNet() {
		return isCNet;
	}

	public void setCNet(boolean isCNet) {
		this.isCNet = isCNet;
	}

	public List<String> getIps() {
		return ips;
	}

	public void setIps(List<String> ips) {
		this.ips = ips;
	}

	@Override
	public String toString() {
		return "IPEntity [vlan=" + vlan + ", isCNet=" + isCNet + ", ips=" + ips + "]";
	}

}
