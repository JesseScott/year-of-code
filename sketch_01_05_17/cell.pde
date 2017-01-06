
class Cell
{

  int x;
  int y;
  int w = 100;
  int h = 100;
  int seed = 0;
  int centerX = 0;
  int centerY = 0;

  Cell(int _x, int _y, int _seed)
  {
    x = _x;
    y = _y;
    seed = _seed;
    centerX = x + w/2;
    centerY = y + h/2;
  }

  void setup() 
  {
    stroke(240);
    fill(255);
    strokeWeight(1);
    rect(x, y, w, h);
  }

  void draw()
  {
    
    int iterations = 2;
    for(int i = 0; i < iterations; i++)
    {
      float offset = (i+1) * seed;
      
      strokeWeight(offset);
      stroke(offset, offset);
      strokeCap(ROUND);
      
      line(centerX, centerY, centerX + (w * i), centerY - (h * i) );
      line(centerX, centerY, centerX + (w * i), centerY + (h * i) );
      line(centerX, centerY, centerX - (w * i), centerY - (h * i) );
      line(centerX, centerY, centerX - (w * i), centerY + (h * i) );
      
    }

  }
  
}