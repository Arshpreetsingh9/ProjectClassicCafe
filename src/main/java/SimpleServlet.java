import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/hello")
public class SimpleServlet extends HttpServlet {
/**
*
*/
private static final long serialVersionUID = 1L;


public void doPost(HttpServletRequest request,
HttpServletResponse response) throws
ServletException, IOException {
PrintWriter out = response.getWriter();
out.println("<html><head><title>PostResults</title></head>");
out.println("<body><h1>Here is theresults</h1>");
out.println("<p />User Name: " +
request.getParameter("email"));
out.println("<p />Password: " +
request.getParameter("password"));
out.println("</body></html>");

// variables
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
// Step 1: Loading or registering ucanaccess
// JDBC driver class
try {
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
} catch (ClassNotFoundException cnfex) {
	System.out.println("Problem in loading or " + "registering MS Access JDBC driver");
	cnfex.printStackTrace();
}
try {
	
	String msAccDB = "C:/Temp/Employee.accdb";
	String dbURL = "jdbc:ucanaccess://" + msAccDB;
	// Step 2.A: Create and get connection
	// using DriverManager class
	connection = DriverManager.getConnection(dbURL);
	// Step 2.B: Creating JDBC Statement
	statement = connection.createStatement();

	// Step 2.C: Executing SQL & retrieve
	// data into ResultSet
	resultSet = statement.executeQuery("SELECT * FROM EMPLOYEE");
	while (resultSet.next()) {
		int id = resultSet.getInt(1);
		String name = resultSet.getString(2);
		Double salary = resultSet.getDouble(3);
		System.out.println("Employee #" + id + ": " + name + ", " + salary);
		
		String html = "<html>";
		html+= "<h2>name :"+name+"<br/>";
		html+= "</html>";
		out.println(html);
	
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