int totalR1, totalR2, totalR3, totalR4, totalR5, totalR6, totalR7, totalR8, totalR9;
int[] regionTotal = new int[9];

void regions() {

  for (int i = 0; i < rows; i += numRegion) { // Region 1 - NE
    totalR1 += rawData[i][1];
    regionTotal[0] = totalR1;
  }
  for (int i = 1; i < rows; i += numRegion) { // Region 1 - NE
    totalR2 += rawData[i][1];
    regionTotal[1] = totalR2;
  }
  for (int i = 2; i < rows; i += numRegion) { // Region 1 - NE
    totalR3 += rawData[i][1];
    regionTotal[2] = totalR3;
  }
  for (int i = 3; i < rows; i += numRegion) { // Region 1 - NE
    totalR4 += rawData[i][1];
    regionTotal[3] = totalR4;
  }
  for (int i = 4; i < rows; i += numRegion) { // Region 1 - NE
    totalR5 += rawData[i][1];
    regionTotal[4] = totalR5;
  }
  for (int i = 5; i < rows; i += numRegion) { // Region 1 - NE
    totalR6 += rawData[i][1];
    regionTotal[5] = totalR6;
  }
  for (int i = 6; i < rows; i += numRegion) { // Region 1 - NE
    totalR7 += rawData[i][1];
    regionTotal[6] = totalR7;
  }
  for (int i = 7; i < rows; i += numRegion) { // Region 1 - NE
    totalR8 += rawData[i][1];
    regionTotal[7] = totalR8;
  }
  for (int i = 8; i < rows; i += numRegion) { // Region 1 - NE
    totalR9 += rawData[i][1];
    regionTotal[8] = totalR9;
  }
}