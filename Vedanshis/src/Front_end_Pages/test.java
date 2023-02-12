package Front_end_Pages;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = "My name is java";
		String[] str1 = str.split(" ");
		String revstr = "";
		for (int i = str1.length - 1; i >= 0; i--) {
			revstr += str1[i]+" ";
		}
		System.out.println(revstr + " ");
		System.out.println(str1.length);
		System.out.println(str1[str1.length -1]);
	}

}
