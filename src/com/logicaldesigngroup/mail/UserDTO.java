package com.logicaldesigngroup.mail;

public class UserDTO {

	private String nombre;
	private String email;
	private String textarea2;
	
	
	
	public UserDTO(String nombre, String email, String textarea2){
		
		super();
		this.nombre = nombre;
		this.email=email;
		this.textarea2= textarea2;
		
	}
	

	public String getNombre() {
		return nombre;
	}
	public String getEmail() {
		return email;
	}
	public String getTextarea2() {
		return textarea2;
	}
	
	
}
