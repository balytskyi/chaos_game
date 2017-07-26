int x1 = 100;
int y1 = 100;

int x2 = 700;
int y2 = 50;

int x3 = 400;
int y3 = 500;

int xMid = 400;
int yMid = 300;

int mx = 0;
int my = 0;

void setup() { 
  size(800, 600);
  frameRate(60);
  background(0);
  stroke(255);
}
 
void draw() {  
  point(x1, y1);
  point(x2, y2);
  point(x3, y3);
  point(xMid, yMid);
  
  float rnd = random(6);
  
  if (rnd < 2) {
      mx = (x1+xMid)/2;
      my = (y1+yMid)/2;
  } else if (rnd > 1 && rnd < 4) {
      mx = (x2+xMid)/2;
      my = (y2+yMid)/2;
  } else if (rnd > 3) {
      mx = (x3+xMid)/2;
      my = (y3+yMid)/2;
  }
  

  point(mx, my);
  xMid = mx;
  yMid = my;
}