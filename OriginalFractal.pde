public void setup()
{
	size(800,600);
	background(0);
	rectMode(CENTER);
}
public void draw()
{
	fractal(400, 300, 325);
}
public void fractal(float x, float y, float siz) 
{
	if (siz > 20){
		fractal(x+siz/1.75,y+siz,siz/1.8);
		fractal(x-siz/1.75,y+siz,siz/1.8);
		fractal(x+siz/1.75,y-siz,siz/1.8);
		fractal(x-siz/1.75,y-siz,siz/1.8);
		rect((float)x,(float)y,(float)siz,(float)siz);
	} else if (siz > 2) {
		stroke((int)(Math.random() + 256),(int)(Math.random() * 256),(int)(Math.random()*256));
		fill((int)0);
		rect((float)x,(float)y,(float)siz,(float)siz);
	}
	else {
		fill(255,255,255);
		rect((float)x,(float)y,(float)siz,(float)siz);
	}
}
