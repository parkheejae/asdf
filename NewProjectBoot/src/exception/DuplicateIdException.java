package exception;

public class DuplicateIdException extends Exception {
	
	
	public DuplicateIdException(){
		
		this("this is duplicateIDException");
	}
	
	public DuplicateIdException(String message){
		super(message);
	}
}
