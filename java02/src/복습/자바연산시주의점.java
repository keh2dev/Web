package 복습;

public class 자바연산시주의점 {

	public static void main(String[] args) {
		// 자바 연산시 주의점
		int x = 20; // 커맨드 알트 화살표 아래 문단 복
		int y = 30;
		
		System.out.println(x/y);
		// 소숫점까지 구하고 싶은 경우에는 안됨
		// 정수와 정수의 계산의 결과는 무조건 정수
		// 계산 시 하나라도 실수면 결과는 무조건 실수!
		
		int x2 = 20;
		double y2 = 30; // 30.0, 실수는 정수를 포함!
		
		System.out.println(x2 / y2);
		
		// 이미 정수로 저장된 값을 cpu가 가져다가 실수 연산을 하고 싶은 경우
		// cpu가 정수를 실수로 변환해서 할 수 있음
		// 강제타입변환(강제현변환) ==> (강제로 바꾸고 싶은 타입)변수명
		System.out.println(x / (double)y);
 
	}

}
