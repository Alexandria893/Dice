//now add a nested loop to duplicate it for HW, and start Chemotaxes

int w=100;

void setup()
{
	size(500,500);
	noLoop();
}

void draw()
{
Die oneDie = new Die(100,100);
oneDie.roll();
oneDie.show();
//Die twoDie = new Die(300,300);
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX;
	int myY;	//variable declarations here
	int myDots;
	Die(int x, int y) 
	{
		myX=x;
		myY=y;
		roll();	//variable initializations here
	}
	void roll()
	{
		
	myDots = (int)(Math.random()*6+1);//your code here

	}

	void show()
	{
		

		if (myDots==1)
		{
		oneDot();
		}
		else if (myDots==2)
		{
		twoDot();
		}
		else  if (myDots==3)
		{
		threeDot();
		}
			
		else if (myDots==4)
		{
		fourDot();
		}
		else if (myDots==5)
		{
		fiveDot();
		}
		else
		{
		sixDot();
		}
		
	}

	void oneDot()
	
	{

		//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,w,w);
		//ONE dot for die
		fill(0);
		ellipse(myX+50,myY+50,20,20);
	}

	void twoDot()
	
	{

		//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,w,w);
		//TWO dot for die
		fill(0);
		ellipse(myX+20,myY+28,20,20);
		ellipse(myX+73,myY+80,20,20);

	}

	void threeDot()
	
	{

	//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,w,w);
	//Three dot for die
		fill(0);
		ellipse(myX+20,myY+28,20,20);
		ellipse(myX+47,myY+50,20,20);
		ellipse(myX+73,myY+80,20,20);

	}

	void fourDot()

	{

	//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,w,w);
	//Four dot for die
		fill(0);
		ellipse(myX+20,myY+20,20,20);
		ellipse(myX+20,myY+80,20,20);
		ellipse(myX+75,myY+20,20,20);
		ellipse(myX+75,myY+80,20,20);

	}

	void fiveDot()

	{

	//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,w,w);
	//Five dot for die
		fill(0);
		ellipse(myX+20,myY+20,20,20);
		ellipse(myX+20,myY+80,20,20);
		ellipse(myX+75,myY+20,20,20);
		ellipse(myX+75,myY+80,20,20);
		ellipse(myX+47,myY+50,20,20);
	}

	void sixDot()

	{

	//Die shape and background
		stroke(0,255,247);
		fill(178,230,233);
		rect(myX,myY,w,w);
	//Six dot for die
		fill(0);
		ellipse(myX+20,myY+20,20,20);
		ellipse(myX+20,myY+80,20,20);
		ellipse(myX+75,myY+20,20,20);
		ellipse(myX+75,myY+80,20,20);
		ellipse(myX+75,myY+50,20,20);
		ellipse(myX+20,myY+50,20,20);
	
	}

}
