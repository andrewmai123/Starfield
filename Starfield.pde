//your code here
Particle [] particles;
void setup()
{
	size(800,800);

	particles = new Particle[500];
	for (int i = 0; i < particles.length; i++)
	{
		particles [i] = new NormalParticle();
	}	

	particles [0] = new OddballParticle();
	particles [200] = new JumboParticle();
	particles [380] = new JumboParticle();

}
void draw()
{


	for (int i = 0; i < particles.length; i++)
	{
		particles[i].move();
		particles[i].show();
	}
}

class NormalParticle implements Particle
{
	double dX, dY, dTheta, dSpeed;

	NormalParticle()
	{
		dX = 400;
		dY = 400;
		dSpeed = Math.random()*5;
		dTheta = Math.random()*TWO_PI;
	}
	void show()
	{
		stroke(162,0,255);
		fill(255,252,123);
		ellipse((int)dX,(int)dY,12,12);
	}
	void move()
	{
		dTheta = dTheta + 0.02;
		dX = dX + (Math.cos(dTheta))*dSpeed;
		dY = dY + (Math.sin(dTheta))*dSpeed;
	}

}

interface Particle
{
	public void show();
	public void move();
}

class OddballParticle implements Particle  //uses an interface
{
	double dX, dY, dTheta, dSpeed;
	int myX, myY;

	OddballParticle()
	{
		dX = 500;
		dY = 500;
		dSpeed = Math.random()*5;
		dTheta = Math.random()*TWO_PI;
	}
	void show()
	{
		noStroke();
		fill(0,myX/2,myY/2);
		rect((int)myX,(int)myY,7,7);
	}
	void move()
	{
		if(mouseX<myX)
 		{
 			myX=myX+(int)(Math.random()*10)-3;
 		}
 		else if (mouseX>myX)
 		{
 			myX=myX+(int)(Math.random()*10)-6;
 		}
 		else
 		{
 			myX=myX+(int)(Math.random()*10)-4;
 		}
 		if(mouseY<myY)
 		{
 			myY=myY+(int)(Math.random()*10)-2;
 		}
 		else if (mouseY>myY)
 		{
 			myY=myY+(int)(Math.random()*10)-6;
 		}
 		else
 		{
 			myY=myY+(int)(Math.random()*10)-4;
 		}

 		if(myX>800 || myX<0)
 		{
 			myX = (int)(Math.random()*400);
 		}

 		if(myY>800 || myY<0)
 		{
 			myY = (int)(Math.random()*400);
 		}
	}

}

class JumboParticle extends NormalParticle//uses inheritance
{
	void show()
	{
		ellipse((int)dX,(int)dY,50,50);
	}
}











