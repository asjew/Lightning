int startX = 200;
int startY = 0;
int endX = 0;
int endY = 150;

void setup()
{
  size(400, 400);
  strokeWeight(4);
  background(151, 160, 175);
  noLoop();
}
void draw()
{
  background(151, 160, 175);
  while(endY < 401)
  {
    endY = startY + (int)(Math.random() * 9);
    endX = startX + (int)(Math.random() * 18) - 9;
    stroke(245, 222, 12);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    stroke(0, 0, 0, 10);
    line(50, 80, 100, 50);
    line(145, 50, 195, 80);
    line(60, 100, 100, 100);
    line(150, 100, 190, 100);
    noFill();
    arc(100, 150, 50, 50, PI/4, PI);
    arc(141, 150, 50, 50, 0, PI);
    
  }
}  
void mousePressed()
{
  startX = mouseX;
  startY = 0;
  endY = 0;
  redraw();
}
