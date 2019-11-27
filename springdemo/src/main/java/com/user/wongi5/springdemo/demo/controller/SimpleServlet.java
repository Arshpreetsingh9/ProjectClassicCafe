package com.user.wongi5.springdemo.demo.controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.wongi5.springdemo.demo.model.SimpleServerletGetter;

import java.sql.*;



public class SimpleServlet extends HttpServlet {
	/**
	*
	*
	*/

	static SimpleServerletGetter ssg = new SimpleServerletGetter();
	private static final long serialVersionUID = 1L;

	int id;
	String remail;
	String rpassword;
	int rewards;
	int rpurchases;
	String favorites;
	
	
	
	//public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	public void doThis( String email,String password,String confirmPassword) throws ServletException, IOException  {
	
	
		SimpleServerletGetter ssg = new SimpleServerletGetter();

// variables
		Connection connection = null;
		Statement statement = null;
		//ResultSet resultSet = null;
		
//Loading or registering ucanaccess JDBC driver class
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		} catch (ClassNotFoundException cnfex) {
			System.out.println("Problem in loading or registering MS Access JDBC driver");
			cnfex.printStackTrace();
		}
		try {
//user inputs from signup form.
			String cust_email = email;
			String cust_password =password;
			String cust_confirmPassword = confirmPassword;
			int cust_reward = 1;
			int cust_purchases = 0;
			String cust_Favorites = " ";
			
			System.out.println("this is from servlet class "+email+" "+password);
			
			
			
//Connection to database.
			String msAccDB = "C:/Temp/Employee.accdb";
			String dbURL = "jdbc:ucanaccess://" + msAccDB;
//Create and get connection using DriverManager class
			connection = DriverManager.getConnection(dbURL);
//Creating JDBC Statement
			statement = connection.createStatement();

		

			
			// Adding customer info to database.

		//	if (cust_repeatpass.equals(cust_password)) {
				String insertSQL = "INSERT INTO CUSTOMER (EMAIL, PASSWORD, REWARDS, PURCHASES, FAVORITES) " + "VALUES ('"
						+ cust_email + "', '" + cust_password + "', '" + cust_reward + "', '" +cust_purchases+"', '"+ cust_Favorites + "')";
				statement.executeUpdate(insertSQL);


				
				
		
		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
		} finally {
			// Step 3: Closing database connection
			try {
				if (connection != null) {
					// cleanup resources, once
					// after processing
					//resultSet.close();
					statement.close();
					// and then finally close connection
					connection.close();
				}
			} catch (SQLException sqlex) {
				sqlex.printStackTrace();
			}
		}

	
	}
	
// method to implement login	
	public void login( String email,String password) throws ServletException, IOException {
		
		Connection connection = null;
		Statement statement = null;
		ResultSet result = null;
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		} catch (ClassNotFoundException cnfex) {
			System.out.println("Problem in loading or registering MS Access JDBC driver");
			cnfex.printStackTrace();
		}
		try {
						String login_email = email;
						String login_password =password;
						String loginquery = "SELECT * FROM CUSTOMER WHERE EMAIL = '"+login_email + "' AND PASSWORD = '" + login_password+"'; ";
						
						String msAccDB = "C:/Temp/Employee.accdb";
						String dbURL = "jdbc:ucanaccess://" + msAccDB;
						connection = DriverManager.getConnection(dbURL);
						statement = connection.createStatement();
						result = statement.executeQuery(loginquery);
						
						while (result.next()) {
							 id = result.getInt(1);
							 remail = result.getString(2);
							 ssg.setemail(remail);
							 rpassword = result.getString(3);
							 ssg.setpassword(rpassword);
							 rewards = result.getInt(4);
							 ssg.setRewards(rewards);
							 rpurchases =result.getInt(5);
							 ssg.setPurchases(rpurchases);
							 favorites = result.getString(6);
							 ssg.setFavorites(favorites);;
							System.out.println(
									"Customer #" + id + ": " + email + ", " + password + ", " + rewards + ", " + favorites);
						
						}
					} catch (SQLException sqlex) {
						sqlex.printStackTrace();
					} finally {
						try {
							if (connection != null) {
								statement.close();
								connection.close();
							}
						} catch (SQLException sqlex) {
							sqlex.printStackTrace();
						}
					}

	}
	
	
	public void purchase( String email,String password) throws ServletException, IOException {
		
		Connection connection = null;
		Statement statement = null;
		ResultSet result = null;
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		} catch (ClassNotFoundException cnfex) {
			System.out.println("Problem in loading or registering MS Access JDBC driver");
			cnfex.printStackTrace();
		}
		try {
						String login_email = email;
						String login_password =password;
						int p = ssg.getPurchases()+1;
						int r = ssg.getRewards()+1;
						String loginquery = "";
						
						if(p>7) {
							
						
						 loginquery = "update CUSTOMER set rewards = "+r+", purchases = '1' WHERE EMAIL = '"+login_email + "' AND PASSWORD = '" + login_password+"'; ";
						}
						else {
							 loginquery = "update CUSTOMER set purchases = "+p+" WHERE EMAIL = '"+login_email + "' AND PASSWORD = '" + login_password+"'; ";
						}
						String msAccDB = "C:/Temp/Employee.accdb";
						String dbURL = "jdbc:ucanaccess://" + msAccDB;
						connection = DriverManager.getConnection(dbURL);
						statement = connection.createStatement();
						int res = statement.executeUpdate(loginquery);
						
						
					} catch (SQLException sqlex) {
						sqlex.printStackTrace();
					} finally {
						try {
							if (connection != null) {
								statement.close();
								connection.close();
							}
						} catch (SQLException sqlex) {
							sqlex.printStackTrace();
						}
					}

	}
}