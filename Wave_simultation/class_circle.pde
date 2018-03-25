class circle
{
public float x;
public float y;
float xx;
float r;
float angle;
float offset;

void getData(float x,float y, float r, float offset)
{
this.x=x;
xx=x;
this.y=y;
this.r=r;
this.angle=0;
this.offset=offset;
}

void show()
{
  noStroke();
  fill(255);
  ellipse(x,y,r,r);
}

void update()
{
  x=map(sin(angle),-1,1,xx-80,xx+80);
  angle+=offset;
}

}
