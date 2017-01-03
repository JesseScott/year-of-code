





void setup() 
{
 size(1000, 1000);
 background(0);
 smooth();
  
 int rows = 10;
 int cols = 10;
 
 for(int x = 0; x < rows; x++)
 {
    for(int y = 0; y < rows; y++)
    {
      Cell cell = new Cell(x * 100, y * 100, (int)random( (x+1) * (y+1) ) );
      cell.setup();
      cell.draw(); 
    }
 }
  
  //save("current.jpg");
  
}