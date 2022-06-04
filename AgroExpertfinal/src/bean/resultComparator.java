package bean;

import java.util.Comparator;

public class resultComparator implements Comparator<DataBean>
{

	public int compare(DataBean o1, DataBean o2) 
	{
		
		if(o1.result==o2.result)  
			return 0;  
			else if(o1.result<o2.result)  
			return 1;  
			else  
			return -1;
	}

}
