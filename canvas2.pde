void canvas2() {

  canvas2.beginDraw();
  canvas2.background(palette[4]);
  monthSelection();
  groupSelection();
  regionSelect();
  showAreaText(area);
  canvas2.endDraw();
}

void showAreaText(int r) {
  canvas2.fill(palette[5]);
  canvas2.textFont(font1, 50);

  if (group == 0) {
    int w = regions[r-1].width;
    canvas2.imageMode(CENTER);
    canvas2.image(regions[r-1], canvas2.width/2, canvas2.height/2, w/3, w/3);

    canvas2.textAlign(LEFT, TOP);
    canvas2.textSize(50);
    canvas2.text(months[month], 10, 10);
    canvas2.textSize(40);
    canvas2.text(region[r-1], 10, 60);
    canvas2.textSize(20);
    canvas2.text("Total", 10, 140);
    canvas2.textSize(40);
    if (r == 1) {
      canvas2.text(northEast[month], 10, 170);
    } else if (r == 2) {
      canvas2.text(northWest[month], 10, 170);
    } else if (r == 3) {
      canvas2.text(midlands[month], 10, 170);
    } else if (r == 4) {
      canvas2.text(west[month], 10, 170);
    } else if (r == 5) {
      canvas2.text(dublin[month], 10, 170);
    } else if (r == 6) {
      canvas2.text(midEast[month], 10, 170);
    } else if (r == 7) {
      canvas2.text(midWest[month], 10, 170);
    } else if (r == 8) {
      canvas2.text(southEast[month], 10, 170);
    } else if (r == 9) {
      canvas2.text(southWest[month], 10, 170);
    }
  } else if (group == 1) {


    int w = regions[r-1].width;
    canvas2.imageMode(CENTER);
    canvas2.image(regions[r-1], canvas2.width/2, canvas2.height/2, w/3, w/3);

    canvas2.textAlign(LEFT, TOP);
    canvas2.textSize(50);
    canvas2.text(months[month], 10, 10);
    canvas2.textSize(40);
    canvas2.text(region[r-1], 10, 60);
    canvas2.textSize(20);
    canvas2.text("Male", 10, 140);
    canvas2.text("Female", 10, 240);
    canvas2.textSize(40);
    if (r == 1) {
      canvas2.text(northEastM[month], 10, 170);
      canvas2.text(northEastF[month], 10, 280);
    } else if (r == 2) {
      canvas2.text(northWestM[month], 10, 170);
      canvas2.text(northWestF[month], 10, 280);
    } else if (r == 3) {
      canvas2.text(midlandsM[month], 10, 170);
      canvas2.text(midlandsF[month], 10, 280);
    } else if (r == 4) {
      canvas2.text(westM[month], 10, 170);
      canvas2.text(westF[month], 10, 280);
    } else if (r == 5) {
      canvas2.text(dublinM[month], 10, 170);
      canvas2.text(dublinF[month], 10, 280);
    } else if (r == 6) {
      canvas2.text(midEastM[month], 10, 170);
      canvas2.text(midEastF[month], 10, 280);
    } else if (r == 7) {
      canvas2.text(midWestM[month], 10, 170);
      canvas2.text(midWestF[month], 10, 280);
    } else if (r == 8) {
      canvas2.text(southEastM[month], 10, 170);
      canvas2.text(southEastF[month], 10, 280);
    } else if (r == 9) {
      canvas2.text(southWestM[month], 10, 170);
      canvas2.text(southWestF[month], 10, 280);
    }
  } else if (group == 2) {


    int w = regions[r-1].width;
    canvas2.imageMode(CENTER);
    canvas2.image(regions[r-1], canvas2.width/2, canvas2.height/2, w/3, w/3);

    canvas2.textAlign(LEFT, TOP);
    canvas2.textSize(50);
    canvas2.text(months[month], 10, 10);
    canvas2.textSize(40);
    canvas2.text(region[r-1], 10, 60);
    canvas2.textSize(20);
    canvas2.text("18 - 24", 10, 140);
    canvas2.text("25 - 44", 10, 240);
    canvas2.text("45 - 64", 130, 140);
    canvas2.text("65+", 130, 240);
    canvas2.textSize(40);
    if (r == 1) {
      canvas2.text(northEastG1[month], 10, 170);
      canvas2.text(northEastG2[month], 10, 280);
      canvas2.text(northEastG3[month], 130, 170);
      canvas2.text(northEastG4[month], 130, 280);
    } else if (r == 2) {
      canvas2.text(northWestG1[month], 10, 170);
      canvas2.text(northWestG2[month], 10, 280);
      canvas2.text(northWestG3[month], 130, 170);
      canvas2.text(northWestG4[month], 130, 280);
    } else if (r == 3) {
      canvas2.text(midlandsG1[month], 10, 170);
      canvas2.text(midlandsG2[month], 10, 280);
      canvas2.text(midlandsG3[month], 130, 170);
      canvas2.text(midlandsG4[month], 130, 280);
    } else if (r == 4) {
      canvas2.text(westG1[month], 10, 170);
      canvas2.text(westG2[month], 10, 280);
      canvas2.text(westG3[month], 130, 170);
      canvas2.text(westG4[month], 130, 280);
    } else if (r == 5) {
      canvas2.text(dublinG1[month], 10, 170);
      canvas2.text(dublinG2[month], 10, 280);
      canvas2.text(dublinG3[month], 130, 170);
      canvas2.text(dublinG4[month], 130, 280);
    } else if (r == 6) {
      canvas2.text(midEastG1[month], 10, 170);
      canvas2.text(midEastG2[month], 10, 280);
      canvas2.text(midEastG3[month], 130, 170);
      canvas2.text(midEastG4[month], 130, 280);
    } else if (r == 7) {
      canvas2.text(midWestG1[month], 10, 170);
      canvas2.text(midWestG2[month], 10, 280);
      canvas2.text(midWestG3[month], 130, 170);
      canvas2.text(midWestG4[month], 130, 280);
    } else if (r == 8) {
      canvas2.text(southEastG1[month], 10, 170);
      canvas2.text(southEastG2[month], 10, 280);
      canvas2.text(southEastG3[month], 130, 170);
      canvas2.text(southEastG4[month], 130, 280);
    } else if (r == 9) {
      canvas2.text(southWestG1[month], 10, 170);
      canvas2.text(southWestG2[month], 10, 280);
      canvas2.text(southWestG3[month], 130, 170);
      canvas2.text(southWestG4[month], 130, 280);
    }
  }
}