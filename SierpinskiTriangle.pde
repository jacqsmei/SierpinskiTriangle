String[] array = {"POINTS", "LINES", "", "*"};
int num = 2;
String select;
public void setup()
{
	fill(255);
	size(400, 400);
	background(0);
}
public void draw()
{
	select = array[num];
	background(0);
	sierpinski(mouseX-200, mouseY+150, 400, select);
	if (keyPressed) {
		if (key=='a') {
			num=0;
			setup();
		}
		if (key=='d') {
			num=1;
			setup();
		}
		if (key=='w') {
			num=2;
			setup();
		}
		if (key=='s') {
			num=3;
			setup();
		}
	}
}
// public void mouseDragged()//optional
// {
// }
public void sierpinski(int x, int y, int len, String mode) 
{
	if (len<20) {
		if (mode.equals("POINTS")) {
			stroke(255);
			beginShape(POINTS);
			vertex(x, y-len);
			vertex(x+len/2, y-len/2);
			vertex(x+len, y);
			vertex(x+len/2, y+len/2);
			vertex(x, y-len);
			vertex(x-len/2, y+len/2);
			vertex(x-len, y);
			vertex(x-len/2, y-len/2);
			endShape();
		} else if (mode.equals("")) {
			stroke(0);
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
		} else if (mode.equals("LINES")) {
			stroke(255);
			beginShape(LINES);
			vertex(x, y-len);
			vertex(x+len/2, y-len/2);
			vertex(x+len, y);
			vertex(x+len/2, y+len/2);
			vertex(x, y-len);
			vertex(x-len/2, y+len/2);
			vertex(x-len, y);
			vertex(x-len/2, y-len/2);
			endShape();
		} else if (mode.equals("*")) {
			stroke(255);
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
		}
	} else {
		sierpinski(x, y, len/2, mode);
		sierpinski(x+len/2, y, len/2, mode);
		sierpinski(x+len/4, y-len/2, len/2, mode);
	}
}

//basic other shapes
// quad(x, y, x+len, y, x+len/2, y-len, x+len, y+len);
// triangle(x, y, x+len, y, x+len/2, y-len);
// sierpinski(mouseX-200, mouseY+150, 400);