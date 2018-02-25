int area=1;

void nfcSelect() {
  area = tagNum;
  //println(area);
}

void regionSelect() {
  if (keyPressed) {
    if (key == '1') {
      area = 1;                //North East
    } else if (key == '2') {
      area = 2;                //North West
    } else if (key == '3') {
      area = 3;                //Midlands
    } else if (key == '4') {
      area = 4;                //West
    } else if (key == '5') {
      area = 5;                //Dublin
    } else if (key == '6') {
      area = 6;               //Mid East
    } else if (key == '7') {
      area = 7;               //Mid West
    } else if (key == '8') {
      area = 8;               //South East
    } else if (key == '9') {
      area = 9;               //South West
    }
  }
}

int month;
void monthSelection() {

  if (key == 'a') {
    month = 0;
  } else if (key == 's') {
    month = 1;
  } else if (key == 'd') {
    month = 2;
  } else if (key == 'f') {
    month = 3;
  } else if (key == 'g') {
    month = 4;
  } else if (key == 'h') {
    month = 5;
  } else if (key == 'z') {
    month = 6;
  } else if (key == 'x') {
    month = 7;
  } else if (key == 'c') {
    month = 8;
  } else if (key == 'v') {
    month = 9;
  } else if (key == 'b') {
    month = 10;
  } else if (key == 'n') {
    month = 11;
  }
}
int group;
void groupSelection(){

  if(key == 'q'){
    group = 0;
  }else if(key == 'w'){
    group = 1;
  }else if(key == 'e'){
    group = 2;
  }

}