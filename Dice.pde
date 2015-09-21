//add the total and start Chemotaxes

int w=100;
int total;

void setup()
{
	size(1000,1000);
	noLoop();
}

void draw()
{
	total=0;

  for (int myY=50; myY<=500; myY+=150)
    {
      for (int myX=50; myX<=500; myX+=150)
      {
		Die oneDie = new Die(myX,myY);
		oneDie.roll();
		oneDie.show();
		total = total + oneDie.myDots;
      }
    }
    	System.out.print("Total" + total + " ");

}

void mousePressed()
{

	total=0;
	redraw();

}

class Die //models one single dice cube
{
	int myDots;
	int myX;
	int myY; //variable declarations here
	Die(int x, int y)
	{
		myX=x;
		myY=y;
		roll(); //variable initializations here
	}
	void roll()
	{
		 myDots=(int)(Math.random()*6+1);
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