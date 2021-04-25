void setup()
{
  size(1000, 800);
  
  tableXPos = (width / 2) - (tableWidth / 2);
  tableYPos = (height / 2) - (tableHeight / 2);
}

float tableWidth = 500, tableHeight = 250;
float tableXPos, tableYPos;

void draw()
{
  background(50);
  
  rect(tableXPos, tableYPos, tableWidth, tableHeight);
}
