package com.user.wongi5.springdemo.demo.model;

public class SimpleServerletGetter {
	private String email;
	private String password;
	private String confirmPassword;
	int rewards;
	int purchases;
	String favorites;
	
	public String getFavorites() {
		return favorites;
	}
	public void setFavorites(String favorites) {
		this.favorites = favorites;
	}
	public int getRewards() {
		return rewards;
	}
	public void setRewards(int rewards) {
		this.rewards = rewards;
	}
	public int getPurchases() {
		return purchases;
	}
	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}
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
