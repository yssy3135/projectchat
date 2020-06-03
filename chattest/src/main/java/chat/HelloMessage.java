package chat;

public class HelloMessage {
	private String name;
	private String contents; 

	public HelloMessage() {
		// TODO Auto-generated constructor stub
	}

	
	  public HelloMessage(String name,String contents) { 
		  this.contents = contents;
		  this.name = name; 
	  }
	 

//	public HelloMessage(String name) {
//
//		this.name = name;
//	}

	
	public String getContents() {
		  return contents;
	}
	 
	public void setContents(String contents) { 
		  this.contents = contents; 
	  }
	 

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
