//perm1.v
//Permutation Choice 1 for Round Key Generator
//Parity drop for keygen

module perm1(subkey, KEY);
input [63:0] KEY;
output [55:0] subkey;

/* PC-1
57 49 41 33 25 17 9
1 58 50 42 34 26 18
10 2 59 51 43 35 27
19 11 3 60 52 44 36
63 55 47 39 31 23 15
7 62 54 46 38 30 22
14 6 61 53 45 37 29
21 13 5 28 20 12 4 */

//57 49 41 33 25 17 9  /*remember to subtract one so indicies are right*/
assign subkey[0]= KEY [56];
assign subkey[1]= KEY [48];
assign subkey[2]= KEY [40];
assign subkey[3]= KEY [32];
assign subkey[4]= KEY [24];
assign subkey[5]= KEY [16];
assign subkey[6]= KEY [8];

//1 58 50 42 34 26 18
assign subkey[7]= KEY [0];
assign subkey[8]= KEY [57];
assign subkey[9]= KEY [49];
assign subkey[10]= KEY [41];
assign subkey[11]= KEY [33];
assign subkey[12]= KEY [25];
assign subkey[13]= KEY [17];

//10 2 59 51 43 35 27
assign subkey[14]= KEY [9];
assign subkey[15]= KEY [1];
assign subkey[16]= KEY [58];
assign subkey[17]= KEY [50];
assign subkey[18]= KEY [42];
assign subkey[19]= KEY [34];
assign subkey[20]= KEY [26];

//19 11 3 60 52 44 36
assign subkey[21]= KEY [18];
assign subkey[22]= KEY [10];
assign subkey[23]= KEY [2];
assign subkey[24]= KEY [59];
assign subkey[25]= KEY [51];
assign subkey[26]= KEY [43];
assign subkey[27]= KEY [35];

//63 55 47 39 31 23 15
assign subkey[28]= KEY [62];
assign subkey[29]= KEY [54];
assign subkey[30]= KEY [46];
assign subkey[31]= KEY [38];
assign subkey[32]= KEY [30];
assign subkey[33]= KEY [22];
assign subkey[34]= KEY [14];

//7 62 54 46 38 30 22
assign subkey[35]= KEY [6];
assign subkey[36]= KEY [61];
assign subkey[37]= KEY [53];
assign subkey[38]= KEY [45];
assign subkey[39]= KEY [37];
assign subkey[40]= KEY [29];
assign subkey[41]= KEY [21];

//14 6 61 53 45 37 29
assign subkey[42]= KEY [13];
assign subkey[43]= KEY [5];
assign subkey[44]= KEY [60];
assign subkey[45]= KEY [52];
assign subkey[46]= KEY [44];
assign subkey[47]= KEY [36];
assign subkey[48]= KEY [28];

//21 13 5 28 20 12 4 
assign subkey[49]= KEY [20];
assign subkey[50]= KEY [12];
assign subkey[51]= KEY [4];
assign subkey[52]= KEY [27];
assign subkey[53]= KEY [19];
assign subkey[54]= KEY [11];
assign subkey[55]= KEY [3];

endmodule
