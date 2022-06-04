package algorithm;

import java.util.ArrayList;

public class MultiRegression 
{

	
	public float calculateSmallavg(float double1, ArrayList<Float> avgRate) {
	
		float y = 0,sum=0,Ybar=0;
		for(int i=0;i<avgRate.size();i++)
		{
			sum += avgRate.get(i);
		}
		Ybar = sum/avgRate.size();
		System.out.println("value of Ybar In MulRegression= "+Ybar);
		y=double1-Ybar;
		return y;
	}
	public float calculateSmallHigh(float double1, ArrayList<Float> highRate) {
		// TODO Auto-generated method stub
		float x1 = 0,sum=0,X1bar=0;
		for(int i=0;i<highRate.size();i++){
			sum += highRate.get(i);
		}
		X1bar = sum/highRate.size();
		x1=double1-X1bar;
		return x1;
	}
	public float calculateSmallLow(float double1, ArrayList<Float> lowRate) {
		// TODO Auto-generated method stub
		float x2 = 0,sum=0,X2bar=0;
		for(int i=0;i<lowRate.size();i++){
			sum += lowRate.get(i);
		}
		X2bar = sum/lowRate.size();
		x2=double1-X2bar;
		return x2;
	}
	
	
	
}
