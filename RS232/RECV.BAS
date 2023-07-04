10 '/**
20 '  * RS232 COMMUNICATION TERMINAL
30 '  *
40 '  * CopyLeft (c) by PopolonY2k 2023
50 '  */
60 SCREEN 0
70 RATE = 9600
80 PRINT "Waiting for data"
90 CALL COMINI (, RATE)
100 OPEN "com:" FOR INPUT AS #1
110 INPUT #1, A$
120 PRINT "Data => ";A$
130 IF NOT EOF(1) THEN 110
140 PRINT "End of Transmission"
150 CLOSE #1
