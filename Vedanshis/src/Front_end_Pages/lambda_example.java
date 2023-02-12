package Front_end_Pages;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class lambda_example  {
	 
 
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
 List<Integer> L = Arrays.asList(1,2,3,4,5,6);
  
  List<Integer>al = new ArrayList<>();
 al =  L.stream().filter(a->a%2==0).collect(Collectors.toList());
  System.out.println("\nCollectors : ");
  System.out.println(al);
  L.stream().filter(a->a%2==0).forEach(a->System.out.print(" "+a));

}
}