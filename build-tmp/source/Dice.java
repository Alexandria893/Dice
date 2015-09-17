import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

int w=70;


public void setup()
{
	size(500,500);
	noLoop();
}

public void draw()
{
Die oneDie = new Die(100,100);
oneDie.roll();
oneDie.show();
//Die twoDie = new Die(300,300);
}

public void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX;
	int myY;	//variable declarations here
	Die(int x, int y) 
	{
		myX=x;
		myY=y;	//variable initializations here
	}
	public void roll()
	{
		
	//your code here
	}
	public void show()
	{
		int dot1= 1;
		int dot2= 2;
		int dot3= 3;
		int dot4= 4;
		int dot5=5;
		int dot6=6;

		for (int i=0;i<=6; i++)
		{
			/*if (dot1==1)
			{
			oneDot();
			}
			else */if (dot2==2)
			{
			twoDot();
			}
		/*	else if (dot3==3)
			{
			threeDot();
			}
			else if (dot4==4)
			{
			fourDot();
			}
			else if (dot5==5)
			{
			fiveDot();
			}
			else
			{
			sixDot();
			}
		*/
		/*//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,70,70);
		//ONE dot for die
		/*fill(0);
		ellipse(myX+34,myY+35,20,20);*/ //your code here
		}
	}

	public void oneDot()
	{

		//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,70,70);
		//ONE dot for die
		fill(0);
		ellipse(myX+34,myY+35,20,20);
	}

	public void twoDot()
	{

		//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,w,w);
		//TWO dot for die
		fill(0);
		ellipse(myX+(w/3),(myY+w/3),20,20);
		ellipse(myX+w*(2/3),myY+w*(2/3),20,20);

	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
