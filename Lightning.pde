void setup()
{
  size(700,500);
  background(0);
}

void draw()
{
	Cloud one = new Cloud(90, 65, 250, 70, 150);
	Cloud two = new Cloud(350, 70, 250, 85, 100);
	Cloud three = new Cloud(500, 50, 260, 80, 200);
	Cloud four = new Cloud(200, 70, 236, 76, 255);
	Cloud five = new Cloud(640, 80, 230, 75, 245);

	one.show();
	two.show();
	three.show();
	four.show();
	five.show();

	fade();
}

void mousePressed()
{
	background(100);
	lightning();
}

class Cloud
{
	int cx, cy, cw, ch, colour;
	Cloud(int myX, int myY, int myW, int myH, int myC)
	{
		cx = myX;
		cy = myY;
		cw = myW;
		ch = myH;
		colour = myC;
	}
	void show()
	{
		noStroke();
		fill(colour);
		ellipse(cx, cy, cw, ch);
		ellipse(cx - 23, cy - 32, cw - 112, ch + 5);
		ellipse(cx + 35, cy - 28, cw - 133, ch - 11);
		ellipse(cx + 48, cy + 31, cw - 150, ch - 34);
		ellipse(cx - 34, cy + 36, cw - 138, ch - 40);
	}
}

void lightning()
{
	int startX, startY, endX, endY;

	stroke(255, 255, 0);

	for (int num = (int)(Math.random()*5); num < 5; num++)
	{
		startX = (int)(Math.random()*700);
		startY = 115;
		endX = 350;
		endY = 90;

		while (endY < 500)
		{
			endX = startX + (int)(Math.random()*19)-9;
			endY = startY + (int)(Math.random()*10);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
		}
	}
}

void fade()
{
	fill(0, 0, 0, 30);
	rect(0, 0, 700, 500);
}