package br.com.sisbrava.managebean;

import javax.faces.bean.ManagedBean;

import br.com.sisbrava.repository.UsuarioRepository;

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
		
		UsuarioRepository u = new UsuarioRepository();
		
		if(u.validateUsernamePassword(getUsername(), getPassword())) {
			return "paginaInicial";
		}
		return "login";
		
	}
	
}
