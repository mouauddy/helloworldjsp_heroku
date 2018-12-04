package bean;
import java.sql.*;

import com.unit.DB;
public class AccountDao {

	
	public static int save(String name,String accno,String address,String email,String contact,String city){
		int status=0;
		try{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO public.\"tblAcc_Info\"(\r\n" + 
					"acc_name, acc_number, address, email, phone, city)\r\n" + 
					"	VALUES (?, ?, ?, ?, ?, ?);");
			ps.setString(1,name);
			ps.setString(2,accno);
			ps.setString(3,email);
			ps.setString(4,address);
			ps.setString(5,city);
			ps.setString(6,contact);
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	public static int delete(int id){
		int status=0;
		try{
			//Connection con=DB.getConnection();
			//PreparedStatement ps=con.prepareStatement("delete from public.\"tblAcc_Info\" where acc_id=?");
			//ps.setInt(1,id);
			//status=ps.executeUpdate();
			//con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}

	public static boolean validate(loginbean bean){
		boolean status=false;
		try{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM public.tbl_userinfo where username=? and password=?");
			ps.setString(1,bean.getUsername());  
			ps.setString(2, bean.getPass()); 
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}

}
