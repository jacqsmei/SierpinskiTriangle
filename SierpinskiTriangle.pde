public void setup()
{
	size(400, 400);
	background(0);
}
public void draw()
{
	sierpinski(5, 400, 400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len<20) {
		beginShape();
		vertex(x, y-len);
		vertex(x+len/2, y-len/2);
		vertex(x+len, y);
		vertex(x+len/2, y+len/2);
		vertex(x, y-len);
		vertex(x-len/2, y+len/2);
		vertex(x-len, y);
		vertex(x-len/2, y-len/2);
		endShape(CLOSE);
	} else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}

// quad(x, y, x+len, y, x+len/2, y-len, x+len, y+len);
// triangle(x, y, x+len, y, x+len/2, y-len);