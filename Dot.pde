class Dot {
  PVector pos;
  PVector vel;
  PVector acc;
  PVector mouse;

  color c;
  int dotSize;
  float maxSpeed;
  int xSpacer, ySpacer;
  Dot() {
    xSpacer = 40;
    ySpacer = xSpacer;
    pos = new PVector(random(xSpacer, canvas1.width-xSpacer), random(ySpacer, canvas1.height- ySpacer));
    maxSpeed = 0.25;
    vel = new PVector(random(-maxSpeed, maxSpeed), random(-maxSpeed, maxSpeed));
    acc = new PVector(0, 0);
    dotSize = 4;
  }
  void display(color tempc) {
    canvas1.ellipseMode(CENTER);
    canvas1.stroke(tempc);
    canvas1.strokeWeight(dotSize);
    canvas1.point(pos.x, pos.y);
    c = tempc;
  }
  void move() {
    mouse = new PVector(mouseX, mouseY);
    mouse.sub(pos);
    mouse.setMag(0.025);

    if (mousePressed) {
      acc = mouse;
    } else {
      acc.x = 0;
      acc.y = 0;
      //vel.limit(maxSpeed*4);
    }

    vel.add(acc);
    pos.add(vel);
    vel.limit(maxSpeed*5);
    //if (keyPressed) {
    //  if (key == '0') {
    //    vel = new PVector(random(-maxSpeed, maxSpeed), random(-maxSpeed, maxSpeed));

    //  }
    //  if (key == '-') {
    //    pos = new PVector(random(xSpacer, canvas1.width-xSpacer), random(ySpacer, canvas1.height- ySpacer));
    //  }
    //}
  }
  void bounce() {

    if (pos.x < xSpacer || pos.x > canvas1.width-xSpacer) {
      vel.x*=-1;
    }
    if (pos.y < ySpacer || pos.y > canvas1.height-ySpacer) {
      vel.y*=-1;
    }
  }
}