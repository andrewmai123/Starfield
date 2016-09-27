//your code here
void setup()
{
	size(400,400);
}
void draw()
{
	NormalParticle bob = new NormalParticle();
}
class NormalParticle
{
	double dX, dY, dTheta, dSpeed;

	NormalParticle()
	{
		dX = 200;
		dY = 200;
	}
	void show();
	{
		fill(0);
		ellipse(dX,dY,200,200);
	}

}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

