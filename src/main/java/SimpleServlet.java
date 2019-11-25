import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.*;

@WebServlet("/hello")

public class SimpleServlet extends HttpServlet {
	/**
	*
	*/
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>PostResults</title></head>");
		out.println("<body><h1>Here is theresults</h1>");
		out.println("<p />User Name: " + request.getParameter("email"));
		out.println("<p />Password: " + request.getParameter("password"));
		out.println("</body></html>");

// variables
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ResultSet validatelogin = null;
// Step 1: Loading or registering ucanaccess
// JDBC driver class
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		} catch (ClassNotFoundException cnfex) {
			System.out.println("Problem in loading or " + "registering MS Access JDBC driver");
			cnfex.printStackTrace();
		}
		try {
			//user inputs from signup form.
			String cust_email = request.getParameter("email");
			String cust_password = request.getParameter("password");
			String cust_repeatpass = request.getParameter("password-repeat");
			int cust_reward = 1;
			String cust_Favorites = "Not decided yet!";
			
			
			
			//String loginquery = "SELECT * FROM CUSTOMER WHERE EMAIL = '"+login_email + "' AND PASSWORD = '" + login_password+"'; ";
			//resultSet = statement.executeQuery(loginquery);
			
			//Connection to database.
			String msAccDB = "C:/Temp/Employee.accdb";
			String dbURL = "jdbc:ucanaccess://" + msAccDB;
			// Step 2.A: Create and get connection
			// using DriverManager class
			connection = DriverManager.getConnection(dbURL);
			// Step 2.B: Creating JDBC Statement
			statement = connection.createStatement();

		

			
			// Adding customer info to database.

			if (cust_repeatpass.equals(cust_password)) {
				String insertSQL = "INSERT INTO CUSTOMER (EMAIL, PASSWORD, REWARDS, fAVORITES) " + "VALUES ('"
						+ cust_email + "', '" + cust_password + "', '" + cust_reward + "', '" + cust_Favorites + "')";
				statement.executeUpdate(insertSQL);


//Step 2.C: Executing SQL & retrieve
				// data into ResultSet
				resultSet = statement.executeQuery("SELECT * FROM CUSTOMER WHERE EMAIL = '"+cust_email + "' AND PASSWORD = '" + cust_password+"'; ");
				while (resultSet.next()) {
					int id = resultSet.getInt(1);
					String email = resultSet.getString(2);
					String password = resultSet.getString(3);
					int rewards = resultSet.getInt(4);
					String favorites = resultSet.getString(5);
					System.out.println(
							"Customer #" + id + ": " + email + ", " + password + ", " + rewards + ", " + favorites);
					String html = "<html>";
					html += "<h2>name :" + email + "<br/>";
					html += "</html>";
					out.println(html);
				}
				
				
			}else {
				System.out.println("Your passwords didn't match.");
			}
		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
		} finally {
			// Step 3: Closing database connection
			try {
				if (connection != null) {
					// cleanup resources, once
					// after processing
					resultSet.close();
					statement.close();
					// and then finally close connection
					connection.close();
				}
			} catch (SQLException sqlex) {
				sqlex.printStackTrace();
			}
		}

		out.flush();
		out.close();
	}
}