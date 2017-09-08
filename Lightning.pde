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
  while(endY < 401)
  {
    endY = startY + (int)(Math.random() * 9);
    endX = startX + (int)(Math.random() * 18) - 9;
    stroke((int)(Math.random()*256));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}  
void mousePressed()
{
  startX = mouseX;
  startY = 0;
  endY = 0;
  redraw();
}