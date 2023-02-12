package Demo;

import java.util.Scanner;

public class Practice {
public static void main(String[]args) {
	   Scanner sc = new Scanner(System.in);
       System.out.print("Enter a string: ");
       String input = sc.nextLine();

       if (input.equals(input.toLowerCase())) {
           System.out.println("Accepted");
       } else {
           System.out.println("Not accepted, only lowercase strings are allowed");
       }
   }
}
