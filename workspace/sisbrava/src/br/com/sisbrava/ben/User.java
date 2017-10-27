package br.com.sisbrava.ben;

import javax.faces.bean.ManagedBean;

@ManagedBean(name = "user")
public class User {

	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getCredencial() {
		if(this.password.equals("senha123")) {
			return "paginaInicial";
		}
		return "login";
	}
	
}
