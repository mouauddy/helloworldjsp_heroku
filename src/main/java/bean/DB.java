package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;


public class DB {
	public static Connection getConnection() throws ClassNotFoundException{
		Connection connection = null;
		/*String url = "jdbc:postgresql://localhost:5432/User_Management";
		String user = "postgres";
		String pwd = "auddy@1234";
		Class.forName("org.postgresql.Driver");*/
		String url = "jdbc:postgresql://ec2-54-163-230-178.compute-1.amazonaws.com:5432/d2gpad9qffjhdp?sslmode=require";
		String user = "cbjnqvkodxpngx";
		String pwd = "3634ffd2ab2622576d2550080bfa0f69a105dda290cf2118aa46b99edc1197d6";//its connect to database from your machine
		Class.forName("org.postgresql.Driver");
		System.out.println("Driver found");
		try {
			 connection = DriverManager.getConnection(url,user,pwd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return connection;
		
	}

}
