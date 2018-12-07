package exception;

public class PasswordErrorException extends Exception {
	public PasswordErrorException(){
		
		this("this is PasswordErrorException");
	}
	
	public PasswordErrorException(String message){
		super(message);
	}
}
