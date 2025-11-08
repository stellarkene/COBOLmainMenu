      *Programmer name: Gabriel Sanchez
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-MENU.

       DATA DIVISION.
               
           WORKING-STORAGE SECTION.
               COPY "mainMenu.cpy".

       01  OS-NAME             PIC X(50).
       01  CLEAR-COMMAND       PIC X(10).
       01  USER-CHOICE         PIC 9.
       01  TEST-PRINT          PIC X(10).


       PROCEDURE DIVISION.
           PERFORM MAIN-MENU.

           STOP RUN.

      *MAIN MENU
       MAIN-MENU.
       
           MOVE 0 TO USER-CHOICE
           PERFORM UNTIL USER-CHOICE = 4
           PERFORM CLEAR-SCREEN
           
           DISPLAY "==========================="
           DISPLAY "         MAIN MENU         "
           DISPLAY "==========================="
           DISPLAY "1 - SEQUENCE MENU"
           DISPLAY "2 - SELECTION MENU"
           DISPLAY "3 - ITERATION MENU"
           DISPLAY "4 - EXIT"
           DISPLAY "ENTER CHOICE (1 - 4): "
           ACCEPT USER-CHOICE

           EVALUATE USER-CHOICE
           
               WHEN 1

               WHEN 2

               WHEN 3

               WHEN 4

               WHEN OTHER 
                   DISPLAY "INVALID INPUT PLEASE TRY AGAIN"
           
           END-EVALUATE

           END-PERFORM

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *CLEAR SCREEN FUNCTION
       CLEAR-SCREEN.
           ACCEPT OS-NAME FROM ENVIRONMENT "OS"
           IF OS-NAME = "Windows_NT"
               MOVE "cls" TO CLEAR-COMMAND
           ELSE
               MOVE "clear" TO CLEAR-COMMAND
           END-IF

           CALL "SYSTEM" USING CLEAR-COMMAND
           
           EXIT PARAGRAPH.

      *EXIT PROMPT
       EXIT-PROMPT.
           DISPLAY "PRESS ENTER TO EXIT"
           ACCEPT TEST-PRINT
           
           EXIT PARAGRAPH.