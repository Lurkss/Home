int[] northEast = new int [12];
int[] northWest = new int [12];
int[] midlands = new int [12];
int[] west = new int [12];
int[] dublin = new int [12];
int[] midEast = new int [12];
int[] midWest = new int [12];
int[] southEast = new int [12];
int[] southWest = new int [12];

int[] northEastM = new int [12];
int[] northWestM = new int [12];
int[] midlandsM = new int [12];
int[] westM = new int [12];
int[] dublinM = new int [12];
int[] midEastM = new int [12];
int[] midWestM = new int [12];
int[] southEastM = new int [12];
int[] southWestM = new int [12];

int[] northEastF = new int [12];
int[] northWestF = new int [12];
int[] midlandsF = new int [12];
int[] westF = new int [12];
int[] dublinF = new int [12];
int[] midEastF = new int [12];
int[] midWestF = new int [12];
int[] southEastF = new int [12];
int[] southWestF = new int [12];

int[] northEastG1 = new int [12];
int[] northWestG1 = new int [12];
int[] midlandsG1 = new int [12];
int[] westG1 = new int [12];
int[] dublinG1 = new int [12];
int[] midEastG1 = new int [12];
int[] midWestG1 = new int [12];
int[] southEastG1 = new int [12];
int[] southWestG1 = new int [12];

int[] northEastG2 = new int [12];
int[] northWestG2 = new int [12];
int[] midlandsG2 = new int [12];
int[] westG2 = new int [12];
int[] dublinG2 = new int [12];
int[] midEastG2 = new int [12];
int[] midWestG2 = new int [12];
int[] southEastG2 = new int [12];
int[] southWestG2 = new int [12];

int[] northEastG3 = new int [12];
int[] northWestG3 = new int [12];
int[] midlandsG3 = new int [12];
int[] westG3 = new int [12];
int[] dublinG3 = new int [12];
int[] midEastG3 = new int [12];
int[] midWestG3 = new int [12];
int[] southEastG3 = new int [12];
int[] southWestG3 = new int [12];

int[] northEastG4 = new int [12];
int[] northWestG4 = new int [12];
int[] midlandsG4 = new int [12];
int[] westG4 = new int [12];
int[] dublinG4 = new int [12];
int[] midEastG4 = new int [12];
int[] midWestG4 = new int [12];
int[] southEastG4 = new int [12];
int[] southWestG4 = new int [12];




void processRegion() {
  //Totals
  for (int i = 0; i < rows; i+=numRegion) {
    northEast[i/9] = rawData[i][1];
  }
  for (int i = 1; i < rows; i+=numRegion) {
    northWest[i/9] = rawData[i][1];
  }
  for (int i = 2; i < rows; i+=numRegion) {
    midlands[i/9] = rawData[i][1];
  }
  for (int i = 3; i < rows; i+=numRegion) {
    west[i/9] = rawData[i][1];
  }
  for (int i = 4; i < rows; i+=numRegion) {
    dublin[i/9] = rawData[i][1];
  }
  for (int i = 5; i < rows; i+=numRegion) {
    midEast[i/9] = rawData[i][1];
  }
  for (int i = 6; i < rows; i+=numRegion) {
    midWest[i/9] = rawData[i][1];
  }
  for (int i = 7; i < rows; i+=numRegion) {
    southEast[i/9] = rawData[i][1];
  }
  for (int i = 8; i < rows; i+=numRegion) {
    southWest[i/9] = rawData[i][1];
  }


  //Males
  for (int i = 0; i < rows; i+=numRegion) {
    northEastM[i/9] = rawData[i][2];
  }
  for (int i = 1; i < rows; i+=numRegion) {
    northWestM[i/9] = rawData[i][2];
  }
  for (int i = 2; i < rows; i+=numRegion) {
    midlandsM[i/9] = rawData[i][2];
  }
  for (int i = 3; i < rows; i+=numRegion) {
    westM[i/9] = rawData[i][2];
  }
  for (int i = 4; i < rows; i+=numRegion) {
    dublinM[i/9] = rawData[i][2];
  }
  for (int i = 5; i < rows; i+=numRegion) {
    midEastM[i/9] = rawData[i][2];
  }
  for (int i = 6; i < rows; i+=numRegion) {
    midWestM[i/9] = rawData[i][2];
  }
  for (int i = 7; i < rows; i+=numRegion) {
    southEastM[i/9] = rawData[i][2];
  }
  for (int i = 8; i < rows; i+=numRegion) {
    southWestM[i/9] = rawData[i][2];
  }


  //Females
  for (int i = 0; i < rows; i+=numRegion) {
    northEastF[i/9] = rawData[i][3];
  }
  for (int i = 1; i < rows; i+=numRegion) {
    northWestF[i/9] = rawData[i][3];
  }
  for (int i = 2; i < rows; i+=numRegion) {
    midlandsF[i/9] = rawData[i][3];
  }
  for (int i = 3; i < rows; i+=numRegion) {
    westF[i/9] = rawData[i][3];
  }
  for (int i = 4; i < rows; i+=numRegion) {
    dublinF[i/9] = rawData[i][3];
  }
  for (int i = 5; i < rows; i+=numRegion) {
    midEastF[i/9] = rawData[i][3];
  }
  for (int i = 6; i < rows; i+=numRegion) {
    midWestF[i/9] = rawData[i][3];
  }
  for (int i = 7; i < rows; i+=numRegion) {
    southEastF[i/9] = rawData[i][3];
  }
  for (int i = 8; i < rows; i+=numRegion) {
    southWestF[i/9] = rawData[i][3];
  }

  //Age group 1
  for (int i = 0; i < rows; i+=numRegion) {
    northEastG1[i/9] = rawData[i][4];
  }
  for (int i = 1; i < rows; i+=numRegion) {
    northWestG1[i/9] = rawData[i][4];
  }
  for (int i = 2; i < rows; i+=numRegion) {
    midlandsG1[i/9] = rawData[i][4];
  }
  for (int i = 3; i < rows; i+=numRegion) {
    westG1[i/9] = rawData[i][4];
  }
  for (int i = 4; i < rows; i+=numRegion) {
    dublinG1[i/9] = rawData[i][4];
  }
  for (int i = 5; i < rows; i+=numRegion) {
    midEastG1[i/9] = rawData[i][4];
  }
  for (int i = 6; i < rows; i+=numRegion) {
    midWestG1[i/9] = rawData[i][4];
  }
  for (int i = 7; i < rows; i+=numRegion) {
    southEastG1[i/9] = rawData[i][4];
  }
  for (int i = 8; i < rows; i+=numRegion) {
    southWestG1[i/9] = rawData[i][4];
  }

  //Age group 2
  for (int i = 0; i < rows; i+=numRegion) {
    northEastG2[i/9] = rawData[i][5];
  }
  for (int i = 1; i < rows; i+=numRegion) {
    northWestG2[i/9] = rawData[i][5];
  }
  for (int i = 2; i < rows; i+=numRegion) {
    midlandsG2[i/9] = rawData[i][5];
  }
  for (int i = 3; i < rows; i+=numRegion) {
    westG2[i/9] = rawData[i][5];
  }
  for (int i = 4; i < rows; i+=numRegion) {
    dublinG2[i/9] = rawData[i][5];
  }
  for (int i = 5; i < rows; i+=numRegion) {
    midEastG2[i/9] = rawData[i][5];
  }
  for (int i = 6; i < rows; i+=numRegion) {
    midWestG2[i/9] = rawData[i][5];
  }
  for (int i = 7; i < rows; i+=numRegion) {
    southEastG2[i/9] = rawData[i][5];
  }
  for (int i = 8; i < rows; i+=numRegion) {
    southWestG2[i/9] = rawData[i][5];
  }

  //Age group 3
  for (int i = 0; i < rows; i+=numRegion) {
    northEastG3[i/9] = rawData[i][6];
  }
  for (int i = 1; i < rows; i+=numRegion) {
    northWestG3[i/9] = rawData[i][6];
  }
  for (int i = 2; i < rows; i+=numRegion) {
    midlandsG3[i/9] = rawData[i][6];
  }
  for (int i = 3; i < rows; i+=numRegion) {
    westG3[i/9] = rawData[i][6];
  }
  for (int i = 4; i < rows; i+=numRegion) {
    dublinG3[i/9] = rawData[i][6];
  }
  for (int i = 5; i < rows; i+=numRegion) {
    midEastG3[i/9] = rawData[i][6];
  }
  for (int i = 6; i < rows; i+=numRegion) {
    midWestG3[i/9] = rawData[i][6];
  }
  for (int i = 7; i < rows; i+=numRegion) {
    southEastG3[i/9] = rawData[i][6];
  }
  for (int i = 8; i < rows; i+=numRegion) {
    southWestG3[i/9] = rawData[i][6];
  }

  //Age group 4
  for (int i = 0; i < rows; i+=numRegion) {
    northEastG4[i/9] = rawData[i][7];
  }
  for (int i = 1; i < rows; i+=numRegion) {
    northWestG4[i/9] = rawData[i][7];
  }
  for (int i = 2; i < rows; i+=numRegion) {
    midlandsG4[i/9] = rawData[i][7];
  }
  for (int i = 3; i < rows; i+=numRegion) {
    westG4[i/9] = rawData[i][7];
  }
  for (int i = 4; i < rows; i+=numRegion) {
    dublinG4[i/9] = rawData[i][7];
  }
  for (int i = 5; i < rows; i+=numRegion) {
    midEastG4[i/9] = rawData[i][7];
  }
  for (int i = 6; i < rows; i+=numRegion) {
    midWestG4[i/9] = rawData[i][7];
  }
  for (int i = 7; i < rows; i+=numRegion) {
    southEastG4[i/9] = rawData[i][7];
  }
  for (int i = 8; i < rows; i+=numRegion) {
    southWestG4[i/9] = rawData[i][7];
  }
}