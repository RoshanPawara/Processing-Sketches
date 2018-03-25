circle[] c=new circle[22];
circle[] c1=new circle[22];
float r=11;
float X=700;

void setup()
{
  size(1024, 768, P3D);
  float y=50;
  float offset=0.002;
  for (int i=1; i<c.length+1; i++)
  {
    c[i-1]=new circle();
    c1[i-1]=new circle();
    
    c[i-1].getData(X, y, r, i*offset);
    c1[i-1].getData(X-375, y, r, i*offset);
    y+=30;
  }
}

void draw()
{
  background(0);
  //stroke(255, 0, 0);
  //line(0, height/2, width, height/2);
  for (int i=0; i<c.length; i++)
  {
    c[i].update();
    c1[i].update();
    strokeWeight(2);   
    stroke(255, 255, 0);
    for (int j=0; j<c.length-1; j++)
    {
      line(c[j].x, c[j].y, c[j+1].x, c[j+1].y);
    }

    stroke(255, 0, 0);
    for (int j=0; j<c.length-2; j+=2)
    {
      line(c[j].x, c[j].y, c[j+2].x, c[j+2].y);
      line(c[j+1].x, c[j+1].y, c[j+3].x, c[j+3].y);
    }

    stroke(0, 255, 0);
    for (int j=0; j<c.length-4; j+=2)
    {
      line(c[j].x, c[j].y, c[j+3].x, c[j+3].y);
      line(c[j+1].x, c[j+1].y, c[j+4].x, c[j+4].y);
      line(c[j+2].x, c[j+2].y, c[j+5].x, c[j+5].y);
    }
    c[i].show();
    c1[i].show();
   }
//saveFrame("output1/Frame_####.tif");   
}
