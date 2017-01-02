
class Cell
{
 
  int x;
  int y;
  int w = 100;
  int h = 100;
  
  Cell(int _x, int _y)
  {
      x = _x;
      y = _y;
  }
  
  void setup() 
  {
    stroke(240);
    fill(255);
    rect(x, y, w, h);    
  }
  
  void draw()
  {
    noStroke();
    fill(random(200), (x+1) * (y+1) + 25);
    ellipse(x + 50, y + 50, 50, 50);
  }
  
  
}