package bean;
import java.sql.*;
import java.text.ParseException;

public class AccountDao {

	
	public static int save(contactbean bean) throws ParseException{
		int status=0;
		
		
try{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO public.\"tblcontact_info\"(\r\n" + 
					"firstname, lastname, dob,address, email, contactno)\r\n" + 
					"	VALUES (?, ?, ?, ?, ?, ?);");
			ps.setString(1,bean.getUname());
			ps.setString(2,bean.getlname());
			ps.setString(3,bean.getdob());
			ps.setString(4,bean.getAddress());
			ps.setString(5,bean.getEmail());
			ps.setString(6,bean.getContactno());
			
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
