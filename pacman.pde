PImage img,cherry;  
int ballX, pac, cherryX;
void setup() 
{
  size(300, 200);
  img = loadImage( "pacman.png" ); 
  cherry = loadImage( "cherry.png" );
  cherryX=-12;
}
void draw()
{
  image(img, 0, 0, 300, 200);
  fill(floor(random(256)), floor(random(256)), floor(random(256)));
  ellipse(100-ballX, 100, 10, 10);
  fill(floor(random(256)), floor(random(256)), floor(random(256)));
  ellipse(150-ballX, 100, 10, 10);
  fill(floor(random(256)), floor(random(256)), floor(random(256)));
  ellipse(200-ballX, 100, 10, 10);
  fill(floor(random(256)), floor(random(256)), floor(random(256)));
  ellipse(250-ballX, 100, 10, 10);
  fill(floor(random(256)), floor(random(256)), floor(random(256)));
  ellipse(300-ballX, 100, 10, 10);
  ballX=(ballX+1)%50;
  fill(255, 255, 0);
  noStroke();
  arc(50, 100, 30, 30, radians(40-pac), radians(320+pac), PIE);
  pac=(pac+1)%40;
  image(cherry,cherryX,185,12,12);
  image(cherry,cherryX-15,185,12,12);
  image(cherry,cherryX-30,185,12,12);
  cherryX=min(cherryX+1,288);
}