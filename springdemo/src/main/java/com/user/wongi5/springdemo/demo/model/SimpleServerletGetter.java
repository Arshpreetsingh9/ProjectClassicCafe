package com.user.wongi5.springdemo.demo.model;

public class SimpleServerletGetter {
	private String email;
	private String password;
	private String confirmPassword;
	
	public  String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getpassword() {
		return password;
	}
	public void setpassword(String password) {
		this.password=password;
	}
	public String getconfirmPassword() {
		return confirmPassword;
	}
	public void setconfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
}
