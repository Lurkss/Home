void canvas1() {

  canvas1.beginDraw();
  canvas1.background(palette[4]);

  monthSelection();
  regionSelect();
  canvas1UI();
  showAreaName(area);
  showMonth(canvas1.width/2, canvas1.height-20);
  points(area);
  groupSelection();

  canvas1.endDraw();
}

void showMonth(int tempx, int tempy) {
  canvas1.pushMatrix();
  canvas1.textAlign(CENTER, CENTER);
  canvas1.text(months[month], tempx, tempy );
  canvas1.popMatrix();
}
int xSpacer = 40;
int ySpacer = 40;
void canvas1UI() {
  canvas1.rectMode(CORNERS);
  canvas1.noFill();
  canvas1.strokeWeight(1);
  canvas1.stroke(palette[1]);
  canvas1.rect(xSpacer-(dots[0].dotSize/2), ySpacer-(dots[0].dotSize/2), canvas1.width-(xSpacer)+(dots[0].dotSize/2), canvas1.height-ySpacer+(dots[0].dotSize/2));
}


void points(int r) { 
  if (group == 0) { //Total by Region
    int numTotal = 0;
    if (r == 1) {
      numTotal = northEast[month];
    } else if (r == 2) {
      numTotal = northWest[month];
    } else if (r == 3) {
      numTotal = midlands[month];
    } else if (r == 4) {
      numTotal = west[month];
    } else if (r == 5) {
      numTotal = dublin[month];
    } else if (r == 6) {
      numTotal = midEast[month];
    } else if (r == 7) {
      numTotal = midWest[month];
    } else if (r == 8) {
      numTotal = southEast[month];
    } else if (r == 9) {
      numTotal = southWest[month];
    }

    for (int i = 1; i < numTotal; i++) {
      dots[i].move();
      dots[i].bounce();
      dots[i].display(palette[1]);
    }
  } else if (group == 1) { //Total Males by Region
    int numMale = 0;
    if (r == 1) {
      numMale = northEastM[month];
    } else if (r == 2) {
      numMale = northWestM[month];
    } else if (r == 3) {
      numMale = midlandsM[month];
    } else if (r == 4) {
      numMale = westM[month];
    } else if (r == 5) {
      numMale = dublinM[month];
    } else if (r == 6) {
      numMale = midEastM[month];
    } else if (r == 7) {
      numMale = midWestM[month];
    } else if (r == 8) {
      numMale = southEastM[month];
    } else if (r == 9) {
      numMale = southWestM[month];
    }
    for (int i = 1; i < numMale; i++) {
      dots[i].move();
      dots[i].bounce();
      dots[i].display(palette[1]);
    }

    int numFemale = 0;
    if (r == 1) {                     // Female
      numFemale = northEastF[month];
    } else if (r == 2) {
      numFemale = northWestF[month];
    } else if (r == 3) {
      numFemale = midlandsF[month];
    } else if (r == 4) {
      numFemale = westF[month];
    } else if (r == 5) {
      numFemale = dublinF[month];
    } else if (r == 6) {
      numFemale = midEastF[month];
    } else if (r == 7) {
      numFemale = midWestF[month];
    } else if (r == 8) {
      numFemale = southEastF[month];
    } else if (r == 9) {
      numFemale = southWestF[month];
    }
    for (int i = numFemale; i < numFemale+numMale; i++) {
      dots[i].move();
      dots[i].bounce();
      dots[i].display(palette[3]);
    }
  } else if (group == 2) {
    int numG1 = 0;
    if (r == 1) {                     // Age group 1
      numG1 = northEastG1[month];
    } else if (r == 2) {
      numG1 = northWestG1[month];
    } else if (r == 3) {
      numG1 = midlandsG1[month];
    } else if (r == 4) {
      numG1 = westG1[month];
    } else if (r == 5) {
      numG1 = dublinG1[month];
    } else if (r == 6) {
      numG1 = midEastG1[month];
    } else if (r == 7) {
      numG1 = midWestG1[month];
    } else if (r == 8) {
      numG1 = southEastG1[month];
    } else if (r == 9) {
      numG1 = southWestG1[month];
    }
    for (int i = 0; i < numG1; i++) {
      dots[i].move();
      dots[i].bounce();
      dots[i].display(palette[1]);
    }

    int numG2 = 0;
    if (r == 1) {                     // Age group 1
      numG2 = northEastG2[month];
    } else if (r == 2) {
      numG2 = northWestG2[month];
    } else if (r == 3) {
      numG2 = midlandsG2[month];
    } else if (r == 4) {
      numG2 = westG2[month];
    } else if (r == 5) {
      numG2 = dublinG2[month];
    } else if (r == 6) {
      numG2 = midEastG2[month];
    } else if (r == 7) {
      numG2 = midWestG2[month];
    } else if (r == 8) {
      numG2 = southEastG2[month];
    } else if (r == 9) {
      numG2 = southWestG2[month];
    }
    for (int i = numG1; i < numG1+numG2; i++) {
      dots[i].move();
      dots[i].bounce();
      dots[i].display(palette[3]);
    }

    int numG3 = 0;
    if (r == 1) {                     // Age group 1
      numG3 = northEastG3[month];
    } else if (r == 2) {
      numG3 = northWestG3[month];
    } else if (r == 3) {
      numG3 = midlandsG3[month];
    } else if (r == 4) {
      numG3 = westG3[month];
    } else if (r == 5) {
      numG3 = dublinG3[month];
    } else if (r == 6) {
      numG3 = midEastG3[month];
    } else if (r == 7) {
      numG3 = midWestG3[month];
    } else if (r == 8) {
      numG3 = southEastG3[month];
    } else if (r == 9) {
      numG3 = southWestG3[month];
    }
    for (int i = numG1+numG2; i < numG1+numG2+numG3; i++) {
      dots[i].move();
      dots[i].bounce();
      dots[i].display(palette[0]);
    }
  }
}


void showAreaName(int r) {
  canvas1.fill(palette[5]);
  canvas1.textFont(font4, 20);
  if (r == 1) {
    canvas1.textAlign(CENTER);
    canvas1.text("North East", canvas1.width/2-20, 25);
  } else if (r == 2) {
    canvas1.textAlign(CENTER);
    canvas1.text("North West", canvas1.width/2-20, 25);
  } else if (r == 3) {
    canvas1.textAlign(CENTER);
    canvas1.text("Midlands", canvas1.width/2-20, 25);
  } else if (r == 4) {
    canvas1.textAlign(CENTER);
    canvas1.text("West", canvas1.width/2-20, 25);
  } else if (r == 5) {
    canvas1.textAlign(CENTER);
    canvas1.text("Dublin", canvas1.width/2-20, 25);
  } else if (r == 6) {
    canvas1.textAlign(CENTER);
    canvas1.text("Mid East", canvas1.width/2-20, 25);
  } else if (r == 7) {
    canvas1.textAlign(CENTER);
    canvas1.text("Mid West", canvas1.width/2-20, 25);
  } else if (r == 8) {
    canvas1.textAlign(CENTER);
    canvas1.text("South East", canvas1.width/2-20, 25);
  } else if (r == 9) {
    canvas1.textAlign(CENTER);
    canvas1.text("South West", canvas1.width/2-20, 25);
  }
}