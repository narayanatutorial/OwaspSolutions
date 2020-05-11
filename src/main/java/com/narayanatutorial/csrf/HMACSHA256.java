package com.narayanatutorial.csrf;


import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import java.util.UUID; 


public class HMACSHA256 {
	
	public static String getHash() {
	    String hash ="";
		try {
			String uuid=UUID.randomUUID().toString();
			
		     String secret = "AurionproTrejhara";
		  //   String message = "Message";

		     Mac sha256_HMAC = Mac.getInstance("HmacSHA256");
		     SecretKeySpec secret_key = new SecretKeySpec(secret.getBytes(), "HmacSHA256");
		     sha256_HMAC.init(secret_key);

		     hash = Base64.encodeBase64String(sha256_HMAC.doFinal(uuid.getBytes()));
		     System.out.println(hash);
		    }
		    catch (Exception e){
		     System.out.println("Error");
		    }
		return hash;
	}
  public static void main(String[] args) {
	  //getHash("frkcM6P4x5VIRPNFs+0rAc9kG8qhZ0Vm0nM816/iLPE=");
   }
}
