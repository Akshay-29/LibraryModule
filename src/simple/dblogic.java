package simple;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Vector;

import javax.xml.ws.Response;

public class dblogic {
	public static String UserName=null;
	static Connection con=null;
	
	static void connect(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/library", "root", "Java");
			System.out.println("database connected...");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	static{
		connect();
		
		}
	
	public static ResultSet get_books(String id){
		try{
		Statement smt=con.createStatement();
		String q1="select * from books where deptid='"+id+"'";
		ResultSet rs1=smt.executeQuery(q1);
		/*while(rs1.next()){
			//System.out.println(rs1.getString(1));
			//System.out.println(rs1.getString(2));
			//System.out.println(rs1.getString(3));
		}*/
		return rs1;
		
	}catch(Exception e){
		e.printStackTrace();
		System.out.println("rs1 not working");
		return null;
	}}
		
	
		public static ResultSet my_books(String enroll){
			try{
			Statement smt=con.createStatement();
			String q1="select * from stu_book where enroll='"+enroll+"'";
			ResultSet rs1=smt.executeQuery(q1);
			/*while(rs1.next()){
				//System.out.println(rs1.getString(1));
				//System.out.println(rs1.getString(2));
				//System.out.println(rs1.getString(3));
			}*/
			return rs1;
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("rs1 not working");
			return null;
		}
	
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new dblogic();
	}

	}
