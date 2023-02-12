package Demo;

public class Que {

	public static void main(String[] args) {
		int a=1023;
		int rev=0;
		int rem;
		while(a!=0) {
		rem=a%10;
		rev=rev*10+rem;
		a=a/10;
		}
		System.out.println(rev);
	}

}
