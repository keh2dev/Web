package 프로그래머스;
import java.util.Scanner;

public class 두수의차 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		Solution1 sol = new Solution1();
		//int answer = sol.solution(num1, num2); //int
		//System.out.println(answer);
		sc.close();
	}
}

class Solution1 {
    public int[] solution(int[] num_list) {
    	int count0 = 0;
    	int count1 = 0;
    	for (int i = 0; i < num_list.length; i++) {
			if (num_list[i]%2 == 0) {
				count0++;
			} else {
				count1++;
			}
		}
    	
        int[] answer = {count0, count1};
        return answer;
    }
}