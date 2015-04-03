package com.timetable.DataModels;

public enum LTP {
    LECTURE(1),TUTORIAL(2),PRACTICAL(3);
	
    public int id;
    
    LTP(int id)
    {
    	this.id=id;
    }
}	

