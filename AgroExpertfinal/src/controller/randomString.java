package controller;

import java.util.Random;
public class randomString {
public static String OTP(int len) {
    System.out.println("Generating OTP using random ()");
    System.out.print("Your OTP is:");

    // Using numeric values
    String numbers = "0123456789";

    // Using random method 
    Random rndm_method = new Random();
    char[] otp = new char[len];
    for(int i=0; i<len;i++) {
      
      otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));
    }
    String s=String.valueOf(otp);  
    return s;
  }

  public static void main(String args[]) {
    int length = 6;
    System.out.println(OTP(length));
  }
}
