String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
String[] monthsShrt = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
String[] region = {"North East", "North West", "Midlands", "West", "Dublin", "Mid East", "Mid West", "South East", "South West"};
int totalJan, totalFeb, totalMar, totalApr, totalMay, totalJun, totalJul, totalAug, totalSep, totalOct, totalNov, totalDec, total, avgTotal, minMonth, maxMonth; // Total of all persons Homeless per Month
int totalJanM, totalFebM, totalMarM, totalAprM, totalMayM, totalJunM, totalJulM, totalAugM, totalSepM, totalOctM, totalNovM, totalDecM, totalM, avgTotalM, minMonthM, maxMonthM;  // Total of all males Homeless per Month
int totalJanF, totalFebF, totalMarF, totalAprF, totalMayF, totalJunF, totalJulF, totalAugF, totalSepF, totalOctF, totalNovF, totalDecF, totalF, avgTotalF, minMonthF, maxMonthF;  // Total of all females Homeless per Month
int totalJanG1, totalFebG1, totalMarG1, totalAprG1, totalMayG1, totalJunG1, totalJulG1, totalAugG1, totalSepG1, totalOctG1, totalNovG1, totalDecG1, totalG1, avgTotalG1, minMonthG1, maxMonthG1;   // Total of all persons aged between 18 - 24 which are Homeless per Monthint totalJanG1, totalFebG1, totalMarG1, totalAprG1, totalMayG1, totalJunG1, totalJulG1, totalAugG1, totalSepG1, totalOctG1, totalNovG1, totalDecG1, totalG1, avgTotalG1;   // Total of all persons aged between 18 - 24 which are Homeless per Month
int totalJanG2, totalFebG2, totalMarG2, totalAprG2, totalMayG2, totalJunG2, totalJulG2, totalAugG2, totalSepG2, totalOctG2, totalNovG2, totalDecG2, totalG2, avgTotalG2, minMonthG2, maxMonthG2;   // Total of all persons aged between 25 - 44 which are Homeless per Month
int totalJanG3, totalFebG3, totalMarG3, totalAprG3, totalMayG3, totalJunG3, totalJulG3, totalAugG3, totalSepG3, totalOctG3, totalNovG3, totalDecG3, totalG3, avgTotalG3, minMonthG3, maxMonthG3;   // Total of all persons aged between 45 - 64 which are Homeless per Month
int totalJanG4, totalFebG4, totalMarG4, totalAprG4, totalMayG4, totalJunG4, totalJulG4, totalAugG4, totalSepG4, totalOctG4, totalNovG4, totalDecG4, totalG4, avgTotalG4, minMonthG4, maxMonthG4;   // Total of all persons aged over 65 which are Homeless per Month



int min, max;

int[] monthTotal = new int[12];
float[] monthTotalHeight = new float[12];

int[] monthTotalM = new int[12];
float[] monthTotalMHeight = new float[12];

int[] monthTotalF = new int[12];
float[] monthTotalFHeight = new float[12];

int[] monthTotalG1 = new int[12];
float[] monthTotalG1Height = new float[12];

int[] monthTotalG2 = new int[12];
float[] monthTotalG2Height = new float[12];

int[] monthTotalG3 = new int[12];
float[] monthTotalG3Height = new float[12];

int[] monthTotalG4 = new int[12];
float[] monthTotalG4Height = new float[12];

int[] mins = new int[7];
int[] maxs = new int[7];


void totals() {
  monthTotal();
  monthTotalM();
  monthTotalF();
  monthTotalG1();
  monthTotalG2();
  monthTotalG3();
  monthTotalG4();
  minMax();
}

void monthTotal() {
  for (int i = 0; i < numRegion; i++) {
    totalJan+=rawData[i][1];
    monthTotal[0] = totalJan;
  }
  for (int i = numRegion; i < numRegion*2; i++) {
    totalFeb+=rawData[i][1];
    monthTotal[1] = totalFeb;
  }
  for (int i = numRegion*2; i < numRegion*3; i++) {
    totalMar+=rawData[i][1];
    monthTotal[2] = totalMar;
  }
  for (int i = numRegion*3; i < numRegion*4; i++) {
    totalApr+=rawData[i][1];
    monthTotal[3] = totalApr;
  }
  for (int i = numRegion*4; i < numRegion*5; i++) {
    totalMay+=rawData[i][1];
    monthTotal[4] = totalMay;
  }
  for (int i = numRegion*5; i < numRegion*6; i++) {
    totalJun+=rawData[i][1];
    monthTotal[5] = totalJun;
  }
  for (int i = numRegion*6; i < numRegion*7; i++) {
    totalJul+=rawData[i][1];
    monthTotal[6] = totalJul;
  }
  for (int i = numRegion*7; i < numRegion*8; i++) {
    totalAug+=rawData[i][1];
    monthTotal[7] = totalAug;
  }
  for (int i = numRegion*8; i < numRegion*9; i++) {
    totalSep+=rawData[i][1];
    monthTotal[8] = totalSep;
  }
  for (int i = numRegion*9; i < numRegion*10; i++) {
    totalOct+=rawData[i][1];
    monthTotal[9] = totalOct;
  }
  for (int i = numRegion*10; i < numRegion*11; i++) {
    totalNov+=rawData[i][1];
    monthTotal[10] = totalNov;
  }
  for (int i = numRegion*11; i < month*12; i++) {
    totalDec+=rawData[i][1];
    monthTotal[11] = totalDec;
  }

  for (int i = 0; i < 12; i++) {
    total+=monthTotal[i];
  }

  avgTotal = total/12;

  minMonth = min(monthTotal);
  maxMonth = max(monthTotal);
}


void monthTotalM() {
  for (int i = 0; i < month; i++) {
    totalJanM+=rawData[i][2];
    monthTotalM[0] = totalJanM;
  }
  for (int i = month; i < month*2; i++) {
    totalFebM+=rawData[i][2];
    monthTotalM[1] = totalFebM;
  }
  for (int i = month*2; i < month*3; i++) {
    totalMarM+=rawData[i][2];
    monthTotalM[2] = totalMarM;
  }
  for (int i = month*3; i < month*4; i++) {
    totalAprM+=rawData[i][2];
    monthTotalM[3] = totalAprM;
  }
  for (int i = month*4; i < month*5; i++) {
    totalMayM+=rawData[i][2];
    monthTotalM[4] = totalMayM;
  }
  for (int i = month*5; i < month*6; i++) {
    totalJunM+=rawData[i][2];
    monthTotalM[5] = totalJunM;
  }
  for (int i = month*6; i < month*7; i++) {
    totalJulM+=rawData[i][2];
    monthTotalM[6] = totalJulM;
  }
  for (int i = month*7; i < month*8; i++) {
    totalAugM+=rawData[i][2];
    monthTotalM[7] = totalAugM;
  }
  for (int i = month*8; i < month*9; i++) {
    totalSepM+=rawData[i][2];
    monthTotalM[8] = totalSepM;
  }
  for (int i = month*9; i < month*10; i++) {
    totalOctM+=rawData[i][2];
    monthTotalM[9] = totalOctM;
  }
  for (int i = month*10; i < month*11; i++) {
    totalNovM+=rawData[i][2];
    monthTotalM[10] = totalNovM;
  }
  for (int i = month*11; i < month*12; i++) {
    totalDecM+=rawData[i][2];
    monthTotalM[11] = totalDecM;
  }

  for (int i = 0; i < 12; i++) {
    totalM+=monthTotalM[i];
  }

  avgTotalM = totalM/12;

  minMonthM = min(monthTotalM);
  maxMonthM = max(monthTotalM);
}

void monthTotalF() {
  for (int i = 0; i < month; i++) {
    totalJanF+=rawData[i][3];
    monthTotalF[0] = totalJanF;
  }
  for (int i = month; i < month*2; i++) {
    totalFebF+=rawData[i][3];
    monthTotalF[1] = totalFebF;
  }
  for (int i = month*2; i < month*3; i++) {
    totalMarF+=rawData[i][3];
    monthTotalF[2] = totalMarF;
  }
  for (int i = month*3; i < month*4; i++) {
    totalAprF+=rawData[i][3];
    monthTotalF[3] = totalAprF;
  }
  for (int i = month*4; i < month*5; i++) {
    totalMayF+=rawData[i][3];
    monthTotalF[4] = totalMayF;
  }
  for (int i = month*5; i < month*6; i++) {
    totalJunF+=rawData[i][3];
    monthTotalF[5] = totalJunF;
  }
  for (int i = month*6; i < month*7; i++) {
    totalJulF+=rawData[i][3];
    monthTotalF[6] = totalJulF;
  }
  for (int i = month*7; i < month*8; i++) {
    totalAugF+=rawData[i][3];
    monthTotalF[7] = totalAugF;
  }
  for (int i = month*8; i < month*9; i++) {
    totalSepF+=rawData[i][3];
    monthTotalF[8] = totalSepF;
  }
  for (int i = month*9; i < month*10; i++) {
    totalOctF+=rawData[i][3];
    monthTotalF[9] = totalOctF;
  }
  for (int i = month*10; i < month*11; i++) {
    totalNovF+=rawData[i][3];
    monthTotalF[10] = totalNovF;
  }
  for (int i = month*11; i < month*12; i++) {
    totalDecF+=rawData[i][3];
    monthTotalF[11] = totalDecF;
  }

  for (int i = 0; i < 12; i++) {
    totalF+=monthTotalF[i];
  }

  avgTotalF = totalF/12;

  minMonthF = min(monthTotalF);
  maxMonthF = max(monthTotalF);
}

void monthTotalG1() {
  for (int i = 0; i < month; i++) {
    totalJanG1+=rawData[i][4];
    monthTotalG1[0] = totalJanG1;
  }
  for (int i = month; i < month*2; i++) {
    totalFebG1+=rawData[i][4];
    monthTotalG1[1] = totalFebG1;
  }
  for (int i = month*2; i < month*3; i++) {
    totalMarG1+=rawData[i][4];
    monthTotalG1[2] = totalMarG1;
  }
  for (int i = month*3; i < month*4; i++) {
    totalAprG1+=rawData[i][4];
    monthTotalG1[3] = totalAprG1;
  }
  for (int i = month*4; i < month*5; i++) {
    totalMayG1+=rawData[i][4];
    monthTotalG1[4] = totalMayG1;
  }
  for (int i = month*5; i < month*6; i++) {
    totalJunG1+=rawData[i][4];
    monthTotalG1[5] = totalJunG1;
  }
  for (int i = month*6; i < month*7; i++) {
    totalJulG1+=rawData[i][4];
    monthTotalG1[6] = totalJulG1;
  }
  for (int i = month*7; i < month*8; i++) {
    totalAugG1+=rawData[i][4];
    monthTotalG1[7] = totalAugG1;
  }
  for (int i = month*8; i < month*9; i++) {
    totalSepG1+=rawData[i][4];
    monthTotalG1[8] = totalSepG1;
  }
  for (int i = month*9; i < month*10; i++) {
    totalOctG1+=rawData[i][4];
    monthTotalG1[9] = totalOctG1;
  }
  for (int i = month*10; i < month*11; i++) {
    totalNovG1+=rawData[i][4];
    monthTotalG1[10] = totalNovG1;
  }
  for (int i = month*11; i < month*12; i++) {
    totalDecG1+=rawData[i][4];
    monthTotalG1[11] = totalDecG1;
  }

  for (int i = 0; i < 12; i++) {
    totalG1+=monthTotalG1[i];
  }

  avgTotalG1 = totalG1/12;

  minMonthG1 = min(monthTotalG1);
  maxMonthG1 = max(monthTotalG1);
}

void monthTotalG2() {
  for (int i = 0; i < month; i++) {
    totalJanG2+=rawData[i][5];
    monthTotalG2[0] = totalJanG2;
  }
  for (int i = month; i < month*2; i++) {
    totalFebG2+=rawData[i][5];
    monthTotalG2[1] = totalFebG2;
  }
  for (int i = month*2; i < month*3; i++) {
    totalMarG2+=rawData[i][5];
    monthTotalG2[2] = totalMarG2;
  }
  for (int i = month*3; i < month*4; i++) {
    totalAprG2+=rawData[i][5];
    monthTotalG2[3] = totalAprG2;
  }
  for (int i = month*4; i < month*5; i++) {
    totalMayG2+=rawData[i][5];
    monthTotalG2[4] = totalMayG2;
  }
  for (int i = month*5; i < month*6; i++) {
    totalJunG2+=rawData[i][5];
    monthTotalG2[5] = totalJunG2;
  }
  for (int i = month*6; i < month*7; i++) {
    totalJulG2+=rawData[i][5];
    monthTotalG2[6] = totalJulG2;
  }
  for (int i = month*7; i < month*8; i++) {
    totalAugG2+=rawData[i][5];
    monthTotalG2[7] = totalAugG2;
  }
  for (int i = month*8; i < month*9; i++) {
    totalSepG2+=rawData[i][5];
    monthTotalG2[8] = totalSepG2;
  }
  for (int i = month*9; i < month*10; i++) {
    totalOctG2+=rawData[i][5];
    monthTotalG2[9] = totalOctG2;
  }
  for (int i = month*10; i < month*11; i++) {
    totalNovG2+=rawData[i][5];
    monthTotalG2[10] = totalNovG2;
  }
  for (int i = month*11; i < month*12; i++) {
    totalDecG2+=rawData[i][5];
    monthTotalG2[11] = totalDecG2;
  }
  for (int i = 0; i < 12; i++) {
    totalG2+=monthTotalG2[i];
  }
  avgTotalG2 = totalG2/12;

  minMonthG2 = min(monthTotalG2);
  maxMonthG2 = max(monthTotalG2);
}

void monthTotalG3() {
  for (int i = 0; i < month; i++) {
    totalJanG3+=rawData[i][6];
    monthTotalG3[0] = totalJanG3;
  }
  for (int i = month; i < month*2; i++) {
    totalFebG3+=rawData[i][6];
    monthTotalG3[1] = totalFebG3;
  }
  for (int i = month*2; i < month*3; i++) {
    totalMarG3+=rawData[i][6];
    monthTotalG3[2] = totalMarG3;
  }
  for (int i = month*3; i < month*4; i++) {
    totalAprG3+=rawData[i][6];
    monthTotalG3[3] = totalAprG3;
  }
  for (int i = month*4; i < month*5; i++) {
    totalMayG3+=rawData[i][6];
    monthTotalG3[4] = totalMayG3;
  }
  for (int i = month*5; i < month*6; i++) {
    totalJunG3+=rawData[i][6];
    monthTotalG3[5] = totalJunG3;
  }
  for (int i = month*6; i < month*7; i++) {
    totalJulG3+=rawData[i][6];
    monthTotalG3[6] = totalJulG3;
  }
  for (int i = month*7; i < month*8; i++) {
    totalAugG3+=rawData[i][6];
    monthTotalG3[7] = totalAugG3;
  }
  for (int i = month*8; i < month*9; i++) {
    totalSepG3+=rawData[i][6];
    monthTotalG3[8] = totalSepG3;
  }
  for (int i = month*9; i < month*10; i++) {
    totalOctG3+=rawData[i][6];
    monthTotalG3[9] = totalAugG3;
  }
  for (int i = month*10; i < month*11; i++) {
    totalNovG3+=rawData[i][6];
    monthTotalG3[10] = totalNovG3;
  }
  for (int i = month*11; i < month*12; i++) {
    totalDecG3+=rawData[i][6];
    monthTotalG3[11] = totalDecG3;
  }
  for (int i = 0; i < 12; i++) {
    totalG3+=monthTotalG3[i];
  }

  avgTotalG3 = totalG3/12;

  minMonthG3 = min(monthTotalG3);
  maxMonthG3 = max(monthTotalG3);
}

void monthTotalG4() {
  for (int i = 0; i < month; i++) {
    totalJanG4+=rawData[i][7];
    monthTotalG4[0] = totalJanG4;
  }
  for (int i = month; i < month*2; i++) {
    totalFebG4+=rawData[i][7];
    monthTotalG4[1] = totalFebG4;
  }
  for (int i = month*2; i < month*3; i++) {
    totalMarG4+=rawData[i][7];
    monthTotalG4[2] = totalMarG4;
  }
  for (int i = month*3; i < month*4; i++) {
    totalAprG4+=rawData[i][7];
    monthTotalG4[3] = totalAprG4;
  }
  for (int i = month*4; i < month*5; i++) {
    totalMayG4+=rawData[i][7];
    monthTotalG4[4] = totalMayG4;
  }
  for (int i = month*5; i < month*6; i++) {
    totalJunG4+=rawData[i][7];
    monthTotalG4[5] = totalJunG4;
  }
  for (int i = month*6; i < month*7; i++) {
    totalJulG4+=rawData[i][7];
    monthTotalG4[6] = totalJulG4;
  }
  for (int i = month*7; i < month*8; i++) {
    totalAugG4+=rawData[i][7];
    monthTotalG4[7] = totalAugG4;
  }
  for (int i = month*8; i < month*9; i++) {
    totalSepG4+=rawData[i][7];
    monthTotalG4[8] = totalSepG4;
  }
  for (int i = month*9; i < month*10; i++) {
    totalOctG4+=rawData[i][7];
    monthTotalG4[9] = totalOctG4;
  }
  for (int i = month*10; i < month*11; i++) {
    totalNovG4+=rawData[i][7];
    monthTotalG4[10] = totalNovG4;
  }
  for (int i = month*11; i < month*12; i++) {
    totalDecG4+=rawData[i][7];
    monthTotalG4[11] = totalDecG4;
  }
  for (int i = 0; i < 12; i++) {
    totalG4+=monthTotalG4[i];
  }

  avgTotalG4 = totalG4/12;

  minMonthG4 = min(monthTotalG4);
  maxMonthG4 = max(monthTotalG4);
}

void minMax() {
  mins[0] = minMonth;
  mins[1] = minMonthM;
  mins[2] = minMonthF;
  mins[3] = minMonthG1;
  mins[4] = minMonthG2;
  mins[5] = minMonthG3;
  mins[6] = minMonthG4;

  maxs[0] = maxMonth;
  maxs[1] = maxMonthM;
  maxs[2] = maxMonthF;
  maxs[3] = maxMonthG1;
  maxs[4] = maxMonthG2;
  maxs[5] = maxMonthG3;
  maxs[6] = maxMonthG4;

  min = min(mins);
  max = max(maxs);

  //println(maxMonth);
}