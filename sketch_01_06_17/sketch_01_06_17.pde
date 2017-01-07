





void setup() 
{
 size(1000, 1000);
 background(255);
 smooth();
  
 int rows = 10;
 int cols = 10;
  
 for(int x = 0; x < rows; x++)
 {
    for(int y = 0; y < cols; y++)
    {
      Cell cell = new Cell(x * 100, y * 100, x + y );
      //cell.setup();
      cell.draw();
    }
 }
  
  save("sketch_01_06_17.jpg");
  
}