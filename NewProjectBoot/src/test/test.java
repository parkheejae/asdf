package test;

import java.sql.SQLException;

import dao.Database;
import exception.DuplicateIdException;
import exception.PasswordErrorException;
import vo.UserRec;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Database db = Database.getInstance();
		
		try {
			db.signIn(new UserRec("daecadid","1234","¹ÚÈñÀç"));
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DuplicateIdException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (PasswordErrorException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
