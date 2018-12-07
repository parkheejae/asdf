package vo;

public class UserRec {
	private String id;
	private String password;
	private String name;
	private int userLevel;
	
	public UserRec(String id, String password, String name) {
		this(id,password,name,0);
		this.id = id;
		this.password = password;
		this.name = name;
	}

	public UserRec(String id, String password, String name, int userLevel) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.userLevel = userLevel;
	}
	
	public UserRec(String id, String password) {
		this(id,password,null);
	}
	
	public UserRec(String id) {
		this(id,null);
	}

	
	
	public String getId() {
		return id;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(int userLevel) {
		this.userLevel = userLevel;
	}

	@Override
	public String toString() {
		return  id + " "+ password + " "+ name +  " "+ userLevel  ;
	}
	
	
	
	
	
}
