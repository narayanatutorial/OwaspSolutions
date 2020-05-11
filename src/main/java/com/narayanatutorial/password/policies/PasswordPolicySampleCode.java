package com.narayanatutorial.password.policies;

public class PasswordPolicySampleCode {

	public static void main(String args[]) {
		 String passwd = "aaZZa44@"; 
	      String pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
	     if(passwd.matches(pattern)) {
	    	 System.out.println("Strong Password"); 
	     }else {
	    	 System.out.println("Weak Password");
	     }
	       
	}
}
