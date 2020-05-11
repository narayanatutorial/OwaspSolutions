package com.narayanatutorial.csrf;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



public class CSRFToken {

	public static void setCSRFRequestData(HttpServletRequest request) {
	
		HttpSession session = request.getSession();
		String hash = HMACSHA256.getHash();
		request.setAttribute("csrf", hash);
		session.setAttribute("csrf", hash);
	}

	public static String getCSRFTokenStatus(HttpServletRequest request) {
		String error = "error";
		String success = "success";
		
		HttpSession session = request.getSession();

		if (null == session.getAttribute("csrf") || null == request.getParameter("csrf")) {
			return error;
		} else {
			System.out.println("csrf from session:"+session.getAttribute("csrf"));
			System.out.println("csrf from request:"+request.getAttribute("csrf"));
			if (session.getAttribute("csrf").equals(request.getParameter("csrf"))) {
				System.out.println("csrf session and request are equal");
				return success;
			} else {
				System.out.println("csrf session and request are not equal");
				return error;
			}
		}
	}
}
