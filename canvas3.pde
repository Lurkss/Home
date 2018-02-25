
int boxDepth = 50;
int alpha = int(255*.66);
void canvas3() {

  canvas3.beginDraw();
  canvas3.lights();
  canvas3.background(palette[4]);

  monthSelection();
  regionSelect();
  groupSelection();
  canvas3UI();
  regionCanvas3(area);
  boxes(area);
  //canvas3Camera();

  canvas3.endDraw();
}
void boxes(int r) {

  float spacer = canvas3.width/17.5;
  if (group == 0) {
    boxesGroup1(r);
  } else if (group == 1) {
    boxesGroup2(r);
  } else if (group == 2) {
    boxesGroup3(r);
  }
} 


void boxesGroup3(int r) {
  float spacer = canvas3.width/17.5;
  float boxHeight1=0;
  float boxHeight2=0;
  float boxHeight3=0;
  float boxHeight4=0;

  for (int i = 0; i < months.length; i++) {                                                 // Calculate box 1 and box 2 height
    if (r == 1) {
      int[] max = {max(northEastG1), max(northEastG2), max(northEastG3), max(northEastG4)};
      boxHeight1 = map(northEastG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(northEastG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(northEastG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(northEastG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 2) {
      int[] max = {max(northWestG1), max(northWestG2), max(northWestG3), max(northWestG4)};
      boxHeight1 = map(northWestG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(northWestG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(northWestG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(northWestG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 3) {
      int[] max = {max(midlandsG1), max(midlandsG2), max(midlandsG3), max(midlandsG4)};
      boxHeight1 = map(midlandsG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(midlandsG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(midlandsG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(midlandsG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 4) {
      int[] max = {max(westG1), max(westG2), max(westG3), max(westG4)};
      boxHeight1 = map(westG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(westG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(westG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(westG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 5) {
      int[] max = {max(dublinG1), max(dublinG2), max(dublinG3), max(dublinG4)};
      boxHeight1 = map(dublinG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(dublinG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(dublinG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(dublinG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 6) {
      int[] max = {max(midEastG1), max(midEastG2), max(midEastG3), max(midEastG4)};
      boxHeight1 = map(midEastG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(midEastG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(midEastG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(midEastG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 7) {
      int[] max = {max(midWestG1), max(midWestG2), max(midWestG3), max(midWestG4)};
      boxHeight1 = map(midWestG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(midWestG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(midWestG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(midWestG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 8) {
      int[] max = {max(southEastG1), max(southEastG2), max(southEastG3), max(southEastG4)};
      boxHeight1 = map(southEastG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(southEastG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(southEastG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(southEastG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 9) {
      int[] max = {max(southWestG1), max(southWestG2), max(southWestG3), max(southWestG4)};
      boxHeight1 = map(southWestG1[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(southWestG2[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight3 = map(southWestG3[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight4 = map(southWestG4[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }


    int boxWidth = 10;

    int zOff = 0;
    if (i!=month) {
      zOff = -50;
    }

    canvas3.pushMatrix();         // Draw Boxes
    canvas3.translate(2*spacer+(i*(spacer+spacer*.25 ))-boxWidth*2, canvas3.height-spacer-(boxHeight1/2), -boxDepth/2+zOff);
    if (i!=month) {
      canvas3.fill(palette[1], alpha);
    } else {
      canvas3.fill(palette[1]);
    }
    canvas3.noStroke();
    canvas3.box(boxWidth, boxHeight1, boxDepth);
    canvas3.popMatrix();

    canvas3.pushMatrix();         // Draw Boxes
    canvas3.translate(2*spacer+(i*(spacer+spacer*.25 ))-boxWidth, canvas3.height-spacer-(boxHeight2/2), -boxDepth/2+zOff);
    if (i!=month) {
      canvas3.fill(palette[0], alpha);
    } else {
      canvas3.fill(palette[0]);
    }
    canvas3.noStroke();
    canvas3.box(boxWidth, boxHeight2, boxDepth);
    canvas3.popMatrix();

    canvas3.pushMatrix();         // Draw Boxes
    canvas3.translate(2*spacer+(i*(spacer+spacer*.25 )), canvas3.height-spacer-(boxHeight3/2), -boxDepth/2+zOff);
    if (i!=month) {
      canvas3.fill(palette[2], alpha);
    } else {
      canvas3.fill(palette[2]);
    }
    canvas3.noStroke();
    canvas3.box(boxWidth, boxHeight3, boxDepth);
    canvas3.popMatrix();

    canvas3.pushMatrix();         // Draw Boxes
    canvas3.translate(2*spacer+(i*(spacer+spacer*.25 ))+boxWidth, canvas3.height-spacer-(boxHeight4/2), -boxDepth/2+zOff);
    if (i!=month) {
      canvas3.fill(palette[4], alpha);
    } else {
      canvas3.fill(palette[4]);
    }
    canvas3.noStroke();
    canvas3.box(boxWidth, boxHeight4, boxDepth);
    canvas3.popMatrix();
  }

  canvas3.pushMatrix();                    //Show Max Values
  canvas3.translate(spacer/2+10, spacer);
  canvas3.rotate(-PI/2);
  canvas3.fill(palette[0]);
  if (r == 1) {
    int[] max = {max(northEastG1), max(northEastG2), max(northEastG3), max(northEastG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 2) {
    int[] max = {max(northWestG1), max(northWestG2), max(northWestG3), max(northWestG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 3) {
    int[] max = {max(midlandsG1), max(midlandsG2), max(midlandsG3), max(midlandsG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 4) {
    int[] max = {max(westG1), max(westG2), max(westG3), max(westG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 5) {
    int[] max = {max(dublinG1), max(dublinG2), max(dublinG3), max(dublinG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 6) {
    int[] max = {max(midEastG1), max(midEastG2), max(midEastG3), max(midEastG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 7) {
    int[] max = {max(midWestG1), max(midWestG2), max(midWestG3), max(midWestG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 8) {
    int[] max = {max(southEastG1), max(southEastG2), max(southEastG3), max(southEastG4)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 9) {
    int[] max = {max(southWestG1), max(southWestG2), max(southWestG3), max(southWestG4)};
    canvas3.text(max(max), 0, 0);
  }
  canvas3.popMatrix();

  //Draw min values for group 2
  canvas3.pushMatrix();                    //Show Min Values
  float textHeight=200;
  canvas3.fill(palette[0]);

  if (r == 1) {

    int[] minVal = {min(northEastG1), min(northEastG2), min(northEastG3), min(northEastG4)};
    int[] maxVal = {max(northEastG1), max(northEastG2), max(northEastG3), max(northEastG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 2) {

    int[] minVal = {min(northWestG1), min(northWestG2), min(northWestG3), min(northWestG4)};
    int[] maxVal = {max(northWestG1), max(northWestG2), max(northWestG3), max(northWestG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 3) {

    int[] minVal = {min(midlandsG1), min(midlandsG2), min(midlandsG3), min(midlandsG4)};
    int[] maxVal = {max(midlandsG1), max(midlandsG2), max(midlandsG3), max(midlandsG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 4) {
    int[] minVal = {min(westG1), min(westG2), min(westG3), min(westG4)};
    int[] maxVal = {max(westG1), max(westG2), max(westG3), max(westG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 5) {
    int[] minVal = {min(dublinG1), min(dublinG2), min(dublinG3), min(dublinG4)};
    int[] maxVal = {max(dublinG1), max(dublinG2), max(dublinG3), max(dublinG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 6) {
    int[] minVal = {min(midEastG1), min(midEastG2), min(midEastG3), min(midEastG4)};
    int[] maxVal = {max(midEastG1), max(midEastG2), max(midEastG3), max(midEastG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 7) {
    int[] minVal = {min(midWestG1), min(midWestG2), min(midWestG3), min(midWestG4)};
    int[] maxVal = {max(midWestG1), max(midWestG2), max(midWestG3), max(midWestG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 8) {
    int[] minVal = {min(southEastG1), min(southEastG2), min(southEastG3), min(southEastG4)};
    int[] maxVal = {max(southEastG1), max(southEastG2), max(southEastG3), max(southEastG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 9) {
    int[] minVal = {min(southWestG1), min(southWestG2), min(southWestG3), min(southWestG4)};
    int[] maxVal = {max(southWestG1), max(southWestG2), max(southWestG3), max(southWestG4)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  canvas3.popMatrix();
}


void boxesGroup2(int r) {
  float spacer = canvas3.width/17.5;
  float boxHeight1=0;
  float boxHeight2=0;

  for (int i = 0; i < months.length; i++) {                                                 // Calculate box 1 and box 2 height
    if (r == 1) {
      int[] max = {max(northEastM), max(northEastF)};
      boxHeight1 = map(northEastM[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(northEastF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 2) {
      int[] max = {max(northWestM), max(northWestF)};
      boxHeight1 = map(northWestM[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(northWestF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 3) {
      int[] max = {max(midlandsM), max(midlandsF)};
      boxHeight1 = map(midlandsM[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(midlandsF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 4) {
      int[] max = {max(westM), max(westF)};
      boxHeight1 = map(westM[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(westF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 5) {
      int[] max = {max(dublinM), max(dublinF)};
      boxHeight1 = map(dublinM[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(dublinF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 6) {
      int[] max = {max(midEastM), max(midEastF)};
      boxHeight1 = map(midEastM[i], 0, max(max), 0, canvas3.height-(2*spacer));        
      boxHeight2 = map(midEastF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 7) {
      int[] max = {max(midWestM), max(midWestF)};
      boxHeight1 = map(midWestM[i], 0, max(max), 0, canvas3.height-(2*spacer));       
      boxHeight2 = map(midWestF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 8) {
      int[] max = {max(southEastM), max(southEastF)};
      boxHeight1 = map(southEastM[i], 0, max(max), 0, canvas3.height-(2*spacer));       
      boxHeight2 = map(southEastF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }
    if (r == 9) {
      int[] max = {max(southWestM), max(southWestF)};
      boxHeight1 = map(southWestM[i], 0, max(max), 0, canvas3.height-(2*spacer));       
      boxHeight2 = map(southWestF[i], 0, max(max), 0, canvas3.height-(2*spacer));
    }


    int boxWidth = 20;

    int zOff = 0;
    if (i!=month) {
      zOff = -50;
    }

    canvas3.pushMatrix();         // Draw Boxes
    canvas3.translate(2*spacer+(i*(spacer+spacer*.25 ))-boxWidth/2, canvas3.height-spacer-(boxHeight1/2), -boxDepth/2+zOff);
    if (i!=month) {
      canvas3.fill(palette[1], alpha);
    } else {
      canvas3.fill(palette[1]);
    }
    canvas3.noStroke();
    canvas3.box(boxWidth, boxHeight1, boxDepth);
    canvas3.popMatrix();

    canvas3.pushMatrix();         // Draw Boxes
    canvas3.translate(2*spacer+(i*(spacer+spacer*.25 ))+boxWidth/2, canvas3.height-spacer-(boxHeight2/2), -boxDepth/2+zOff);
    if (i!=month) {
      canvas3.fill(palette[0], alpha);
    } else {
      canvas3.fill(palette[0]);
    }
    canvas3.noStroke();
    canvas3.box(boxWidth, boxHeight2, boxDepth);
    canvas3.popMatrix();
  }

  canvas3.pushMatrix();                    //Show Max Values
  canvas3.translate(spacer/2+10, spacer);
  canvas3.rotate(-PI/2);
  canvas3.fill(palette[0]);
  if (r == 1) {
    int[] max = {max(northEastM), max(northEastF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 2) {
    int[] max = {max(northWestM), max(northWestF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 3) {
    int[] max = {max(midlandsM), max(midlandsF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 4) {
    int[] max = {max(westM), max(westF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 5) {
    int[] max = {max(dublinM), max(dublinF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 6) {
    int[] max = {max(midEastM), max(midEastF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 7) {
    int[] max = {max(midWestM), max(midWestF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 8) {
    int[] max = {max(southEastM), max(southEastF)};
    canvas3.text(max(max), 0, 0);
  }
  if (r == 9) {
    int[] max = {max(southWestM), max(southWestF)};
    canvas3.text(max(max), 0, 0);
  }
  canvas3.popMatrix();

  //Draw min values for group 2
  canvas3.pushMatrix();                    //Show Min Values
  float textHeight=200;
  canvas3.fill(palette[0]);

  if (r == 1) {

    int[] minVal = {min(northEastM), min(northEastF)};
    int[] maxVal = {max(northEastM), max(northEastF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 2) {

    int[] minVal = {min(northWestM), min(northWestF)};
    int[] maxVal = {max(northWestM), max(northWestF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 3) {

    int[] minVal = {min(midlandsM), min(midlandsF)};
    int[] maxVal = {max(midlandsM), max(midlandsF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 4) {
    int[] minVal = {min(westM), min(westF)};
    int[] maxVal = {max(westM), max(westF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 5) {
    int[] minVal = {min(dublinM), min(dublinF)};
    int[] maxVal = {max(dublinM), max(dublinF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 6) {
    int[] minVal = {min(midEastM), min(midEastF)};
    int[] maxVal = {max(midEastM), max(midEastF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 7) {
    int[] minVal = {min(midWestM), min(midWestF)};
    int[] maxVal = {max(midWestM), max(midWestF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 8) {
    int[] minVal = {min(southEastM), min(southEastF)};
    int[] maxVal = {max(southEastM), max(southEastF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  if (r == 9) {
    int[] minVal = {min(southWestM), min(southWestF)};
    int[] maxVal = {max(southWestM), max(southWestF)};

    textHeight = map(min(minVal), 0, max(maxVal), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(minVal), 0, 0);
  }
  canvas3.popMatrix();
}


void boxesGroup1(int r) {
  float spacer = canvas3.width/17.5;
  float boxHeight=0;

  //Calculate Box Height

  for (int i = 0; i < months.length; i++) {
    if (r == 1) {
      boxHeight = map(northEast[i], 0, max(northEast), 0, canvas3.height-(2*spacer));
    }
    if (r == 2) {
      boxHeight = map(northWest[i], 0, max(northWest), 0, canvas3.height-(2*spacer));
    }
    if (r == 3) {
      boxHeight = map(midlands[i], 0, max(midlands), 0, canvas3.height-(2*spacer));
    }
    if (r == 4) {
      boxHeight = map(west[i], 0, max(west), 0, canvas3.height-(2*spacer));
    }
    if (r == 5) {
      boxHeight = map(dublin[i], 0, max(dublin), 0, canvas3.height-(2*spacer));
    }
    if (r == 6) {
      boxHeight = map(midEast[i], 0, max(midEast), 0, canvas3.height-(2*spacer));
    }
    if (r == 7) {
      boxHeight = map(midWest[i], 0, max(midWest), 0, canvas3.height-(2*spacer));
    }
    if (r == 8) {
      boxHeight = map(southEast[i], 0, max(southEast), 0, canvas3.height-(2*spacer));
    }
    if (r == 9) {
      boxHeight = map(southWest[i], 0, max(southWest), 0, canvas3.height-(2*spacer));
    }


    int zOff = 0;
    int alpha = 50;
    if (i!=month) {
      zOff = -50;
    }
    canvas3.pushMatrix();         // Draw Box
    canvas3.translate(2*spacer+(i*(spacer+spacer*.25 )), canvas3.height-spacer-(boxHeight/2), -boxDepth/2+zOff);
    if (i!=month) {
      canvas3.fill(palette[1], alpha);
    } else {
      canvas3.fill(palette[1]);
    }
    canvas3.noStroke();
    canvas3.box(20, boxHeight, boxDepth);
    canvas3.popMatrix();
  }


  canvas3.pushMatrix();                    //Show Max Values
  canvas3.translate(spacer/2+10, spacer);
  canvas3.rotate(-PI/2);
  canvas3.fill(palette[0]);
  if (r == 1) {
    canvas3.text(max(northEast), 0, 0);
  }
  if (r == 2) {
    canvas3.text(max(northWest), 0, 0);
  }
  if (r == 3) {
    canvas3.text(max(midlands), 0, 0);
  }
  if (r == 4) {
    canvas3.text(max(west), 0, 0);
  }
  if (r == 5) {
    canvas3.text(max(dublin), 0, 0);
  }
  if (r == 6) {
    canvas3.text(max(midEast), 0, 0);
  }
  if (r == 7) {
    canvas3.text(max(midWest), 0, 0);
  }
  if (r == 8) {
    canvas3.text(max(southEast), 0, 0);
  }
  if (r == 9) {
    canvas3.text(max(southWest), 0, 0);
  }
  canvas3.popMatrix();



  canvas3.pushMatrix();                    //Show Min Values
  float textHeight=200;
  canvas3.fill(palette[0]);

  if (r == 1) {
    textHeight = map(min(northEast), 0, max(northEast), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(northEast), 0, 0);
  }
  if (r == 2) {
    textHeight = map(min(northWest), 0, max(northWest), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(northWest), 0, 0);
  }
  if (r == 3) {
    textHeight = map(min(midlands), 0, max(midlands), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(midlands), 0, 0);
  }
  if (r == 4) {
    textHeight = map(min(west), 0, max(west), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(west), 0, 0);
  }
  if (r == 5) {
    textHeight = map(min(dublin), 0, max(dublin), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(dublin), 0, 0);
  }
  if (r == 6) {
    textHeight = map(min(midEast), 0, max(midEast), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(midEast), 0, 0);
  }
  if (r == 7) {
    textHeight = map(min(midWest), 0, max(midWest), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(midWest), 0, 0);
  }
  if (r == 8) {
    textHeight = map(min(southEast), 0, max(southEast), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(southEast), 0, 0);
  }
  if (r == 9) {
    textHeight = map(min(southWest), 0, max(southWest), 0, canvas3.height-spacer*2);
    canvas3.translate(spacer/2+10, canvas3.height-spacer-textHeight);
    canvas3.rotate(-PI/2);
    canvas3.text(min(southWest), 0, 0);
  }
  canvas3.popMatrix();
}

void canvas3UI() {

  float spacer = canvas3.width/17.5;
  canvas3.pushMatrix();

  canvas3.stroke(palette[3]);
  canvas3.strokeWeight(3);
  canvas3.line(spacer, spacer, spacer, canvas3.height-spacer);
  canvas3.line(spacer, canvas3.height-spacer, 0, canvas3.width-spacer, canvas3.height-spacer, 0);
  canvas3.line(spacer, canvas3.height-spacer, 0, spacer, canvas3.height-spacer, -boxDepth);
  canvas3.line(canvas3.width-spacer, canvas3.height-spacer, 0, canvas3.width-spacer, canvas3.height-spacer, -boxDepth); 

  for (int i = 0; i < 5; i++) {
    canvas3.line(spacer, canvas3.height-spacer, - i * (boxDepth/4), canvas3.width-spacer, canvas3.height-spacer, - i * (boxDepth/4));
  }

  for (int i = 0; i < months.length; i++) {
    if (i==month) {
      canvas3.fill(palette[5], 255/3);
      canvas3.rectMode(CENTER);
      canvas3.noStroke();
      canvas3.rect((spacer*2)+(i*(spacer+(spacer*.25))), canvas3.height-(spacer/2), 40, 30);
    }
    if (i==month) {
      canvas3.fill(palette[3]);
    } else {
      canvas3.fill(palette[5]);
    }
    canvas3.textFont(font5, 20);
    canvas3.textAlign(CENTER, CENTER);
    canvas3.text(monthsShrt[i], (spacer*2)+(i*(spacer+(spacer*.25))), canvas3.height-(spacer/2));
  }
  canvas3.popMatrix();
}

void regionCanvas3(int r) {
  canvas3.fill(palette[5]);
  canvas3.textFont(font5, 30);
  int xpos = canvas3.width/2;
  int ypos = 25;

  canvas3.textAlign(CENTER);
  canvas3.text(region[r-1], xpos, ypos);
}

void canvas3Camera() {
  float xOffset = map(mouseX, 0, width, -500, 500);
  float yOffset = 0;
  canvas3.camera(canvas3.width/2.0+xOffset, canvas3.height/2.0+yOffset, ((canvas3.height/2.0) / tan(PI*30.0 / 180.0))+100, canvas3.width/2.0, canvas3.height/2.0, 0, 0, 1, 0);
}