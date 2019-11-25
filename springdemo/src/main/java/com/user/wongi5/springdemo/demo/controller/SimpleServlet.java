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

	SimpleServerletGetter ssg = new SimpleServerletGetter();
	private static final long serialVersionUID = 1L;

	//public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	public void doThis( String email,String password,String confirmPassword) throws ServletException, IOException  {
	
		/*PrintWriter out = response.getWriter();
		out.println("<html><head><title>PostResults</title></head>");
		out.println("<body><h1>Here is theresults</h1>");
		out.println("<p />User Name: " + request.getParameter("email"));
		out.println("<p />Password: " + request.getParameter("password"));
		out.println("</body></html>");*/
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
			String cust_Favorites = " ";
			
			System.out.println("this is from servlet class "+email+" "+password);
			
			
			//String loginquery = "SELECT * FROM CUSTOMER WHERE EMAIL = '"+login_email + "' AND PASSWORD = '" + login_password+"'; ";
			//resultSet = statement.executeQuery(loginquery);
			
//Connection to database.
			String msAccDB = "C:/Temp/Employee.accdb";
			String dbURL = "jdbc:ucanaccess://" + msAccDB;
//Create and get connection using DriverManager class
			connection = DriverManager.getConnection(dbURL);
//Creating JDBC Statement
			statement = connection.createStatement();

		

			
			// Adding customer info to database.

		//	if (cust_repeatpass.equals(cust_password)) {
				String insertSQL = "INSERT INTO CUSTOMER (EMAIL, PASSWORD, REWARDS, fAVORITES) " + "VALUES ('"
						+ cust_email + "', '" + cust_password + "', '" + cust_reward + "', '" + cust_Favorites + "')";
				statement.executeUpdate(insertSQL);


//Step 2.C: Executing SQL & retrieve
				// data into ResultSet
			/*	resultSet = statement.executeQuery("SELECT * FROM CUSTOMER WHERE EMAIL = '"+cust_email + "' AND PASSWORD = '" + cust_password+"'; ");
				while (resultSet.next()) {
					int id = resultSet.getInt(1);
					String email = resultSet.getString(2);
					String password = resultSet.getString(3);
					int rewards = resultSet.getInt(4);
					String favorites = resultSet.getString(5);
					System.out.println(
							"Customer #" + id + ": " + email + ", " + password + ", " + rewards + ", " + favorites);
				// html = "<html>";
				//	html += "<h2>name :" + email + "<br/>";
				//	html += "</html>";
				//	out.println(html);
				}*/
				
				
			//}else {
			//	System.out.println("Your passwords didn't match.");
			//}
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

		//out.flush();
		//out.close();
	}
	
// method to implement login	
	public void login( String email,String password) throws ServletException, IOException {
		SimpleServerletGetter ssg = new SimpleServerletGetter();
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
							int id = result.getInt(1);
							String remail = result.getString(2);
							String rpassword = result.getString(3);
							int rewards = result.getInt(4);
							String favorites = result.getString(5);
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
}