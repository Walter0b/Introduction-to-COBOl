       IDENTIFICATION DIVISION.
       PROGRAM-ID. HTTP-REQUEST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 HTTP-COMMAND     PIC X(103).
       77 RESPONSE-FILE    PIC X(100).
       77 CURL-COMMAND     PIC X(200).
       
       PROCEDURE DIVISION.
           MOVE "wget 'link" 
           TO 
           HTTP-COMMAND
           MOVE "response.txt" TO RESPONSE-FILE
           
           CALL "SYSTEM" USING HTTP-COMMAND
           IF RETURN-CODE = 0
            DISPLAY "HTTP request successful."
           ELSE
            DISPLAY "HTTP request failed."
           END-IF
       
           STOP RUN.