       IDENTIFICATION DIVISION.
       PROGRAM-ID. READTESTDATA.
       AUTHOR.  Joram Tagny
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT TEST-FILE ASSIGN TO 'weather2020.dat'
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.
       
       DATA DIVISION.
       FILE SECTION.
       FD TEST-FILE.
       01 FILE-RECORD.
          02 DATA1     PIC 9(6).
          02 DATA2     PIC 9(10).
          02 DATA3     PIC A(5).
          02 DATA4     PIC A(5).
          02 DATA5     PIC A(5).
          02 DATA6     PIC A(5).
          02 DATA7     PIC A(5).
          02 DATA8     PIC A(5).
       
       WORKING-STORAGE SECTION.
       01 WS-EOF       PIC X(1)  VALUE 'N'.
       01 NEWLINE      PIC X     VALUE X'0A'.
       
       PROCEDURE DIVISION.
           DISPLAY NEWLINE "INFORMATION TABLE" NEWLINE.
           DISPLAY " --------------------------------------" &
                   "---------------------------------" 
           DISPLAY " |   1    |     2     |    3   |   4   |" &
                   "    5  |   6   |   7   |   8   |"
           DISPLAY " -----------------------------------" &
                   "------------------------------------" 
       
           OPEN INPUT TEST-FILE
           PERFORM READ-PROCEDURE UNTIL WS-EOF = 'Y'
           CLOSE TEST-FILE       
           STOP RUN.
       
       READ-PROCEDURE.
           READ TEST-FILE
           AT END
           MOVE 'Y' TO WS-EOF
           END-READ.
           DISPLAY " | "
                   DATA1
                   " | "
                   DATA2
                   " | "
                   DATA3
                   " | "
                   DATA4
                   " | "
                   DATA5
                   " | "
                   DATA6
                   " | "
                   DATA7
                   " | "
                   DATA8
                   " |".
           DISPLAY " -----------------------------------" &
                   "------------------------------------".