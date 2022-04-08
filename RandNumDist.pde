int[] wallsLength;

void setup()
{
  size(640, 240);
  wallsLength = new int[20];
}

void draw()
{
  background(255);
  
  int index = int(random(0, wallsLength.length));
  wallsLength[index]+=3;
  
  stroke(20);
  noFill();
  
  int exp = width/wallsLength.length;
  
  for(int z = 0; z < wallsLength.length; ++z)
  {
    rect(z*exp, height-wallsLength[z], exp-1, wallsLength[z]);
  }
}
