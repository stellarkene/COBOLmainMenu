      *Programmer name: Gabriel Sanchez
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-MENU.

       DATA DIVISION.
               
           WORKING-STORAGE SECTION.
               COPY "mainMenu.cpy".

       01  OS-NAME                 PIC X(50).
       01  CLEAR-COMMAND           PIC X(10).
       01  USER-CHOICE             PIC 9.
       01  TEST-PRINT              PIC X(10).

      *SEQ
       01  USER-CHOICE-SEQ         PIC 9(2).
      *SEL
       01  USER-CHOICE-SEl         PIC 9(2).
      *ITE
       01  USER-CHOICE-ITE         PIC 9(2).



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
           DISPLAY "ENTER CHOICE (1 - 4): " WITH NO ADVANCING
           ACCEPT USER-CHOICE

           EVALUATE USER-CHOICE
           
               WHEN 1
                   DISPLAY "SEQUENCE MENU"
                   PERFORM SEQUENCE-MENU
                   PERFORM EXIT-PROMPT

               WHEN 2
                   DISPLAY "2 - SELECTION MENU"
                   PERFORM EXIT-PROMPT

               WHEN 3
                   DISPLAY "3 - ITERATION MENU"
                   PERFORM EXIT-PROMPT

               WHEN 4
                   DISPLAY "4 - EXITING PROGRAM"
                   

               WHEN OTHER 
                   DISPLAY "INVALID INPUT PLEASE TRY AGAIN"
           
           END-EVALUATE

           END-PERFORM

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.
       
      *SEQUENCE MENU
       SEQUENCE-MENU.
           MOVE 0 TO USER-CHOICE-SEQ
           PERFORM UNTIL USER-CHOICE-SEQ = 11
           PERFORM CLEAR-SCREEN
           
           DISPLAY "==========================="
           DISPLAY "      SEQUENCE MENU        "
           DISPLAY "==========================="
           DISPLAY "1 - PRINT NAME 5 TIMES"
           DISPLAY "2 - SWAP TWO NUMBERS"
           DISPLAY "3 - TWO NUMBER OPERATIONS"
           DISPLAY "4 - CONVERT CELCIUS TO FAHRENHEIT"
           DISPLAY "5 - SALES-MAN INFORMATION"
           DISPLAY "6 - COMPUTE FOR AVERAGE"
           DISPLAY "7 - CUBE AND SQUARE OF A NUMBER"
           DISPLAY "8 - AREA AND PERIMETER OF A RECTANGLE"
           DISPLAY "9 - AREA AND CIRCUMFERENCE OF A CIRCLE"
           DISPLAY "10 - AREA AND PERIMETER OF A TRIANGLE"
           DISPLAY "11 - "
           
           DISPLAY "ENTER CHOICE (1 - 11): " WITH NO ADVANCING
           ACCEPT USER-CHOICE-SEQ

           EVALUATE USER-CHOICE-SEQ
           
               WHEN 1
                   PERFORM CLEAR-SCREEN
                   DISPLAY "1 - PRINT NAME 5 TIMES"
      *            PERFORM SEQ-1

               WHEN 2
                   PERFORM CLEAR-SCREEN
                   DISPLAY "2 - SWAP TWO NUMBERS"

               WHEN 3
                   PERFORM CLEAR-SCREEN
                   DISPLAY "3 - TWO NUMBER OPERATIONS"

               WHEN 4
                   PERFORM CLEAR-SCREEN
                   DISPLAY "4 - CONVERT CELCIUS TO FAHRENHEIT"

               WHEN 5
                   PERFORM CLEAR-SCREEN
                   DISPLAY "5 - SALES-MAN INFORMATION"

               WHEN 6
                   PERFORM CLEAR-SCREEN
                   DISPLAY "6 - COMPUTE FOR AVERAGE"

               WHEN 7
                   PERFORM CLEAR-SCREEN
                   DISPLAY "7 - CUBE AND SQUARE OF A NUMBER"

               WHEN 8
                   PERFORM CLEAR-SCREEN
                   DISPLAY "8 - AREA AND PERIMETER OF A RECTANGLE"

               WHEN 9
                   PERFORM CLEAR-SCREEN
                   DISPLAY "9 - AREA AND CIRCUMFERENCE OF A CIRCLE"

               WHEN 10
                   PERFORM CLEAR-SCREEN
                   DISPLAY "10 - AREA AND PERIMETER OF A TRIANGLE"

               WHEN 11
                   PERFORM CLEAR-SCREEN
                   DISPLAY "EXITING SEQUENCE MENU"
                   PERFORM EXIT-PROMPT

               WHEN OTHER 
                   DISPLAY "INVALID CHOICE PLEASE TRY AGIAN"

           END-EVALUATE 

           
           END-PERFORM
           EXIT PARAGRAPH.

      *SALES MAN INFORMATION
       SEQ-5.
           DISPLAY "PLEASE INPUT NAME: " WITH NO ADVANCING
           ACCEPT SEQ5_SALES_MAN_NAME

           DISPLAY "PLEASE INPUT NUM: " WITH NO ADVANCING
           ACCEPT SEQ5_SALES_MAN_NUM

           DISPLAY "PLEASE INPUT UNITS SOLD: " WITH NO ADVANCING
           ACCEPT SEQ5_UNIT_SOLD

           DISPLAY "PLEASE INPUT UNIT PRICE: " WITH NO ADVANCING
           ACCEPT SEQ5_UNIT_PRICE

           COMPUTE SEQ5_STORE_TOTAL_SALES = 
-              SEQ5_UNIT_SOLD * SEQ5_UNIT_PRICE
           DISPLAY "TOTAL SALES: " SEQ5_STORE_TOTAL_SALES

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *CELCIUS TO FAHRENHEIT
       SEQ-4.
           
           DISPLAY "PLEASE INPUT SEQ4_CELCIUS: " WITH NO ADVANCING
           ACCEPT SEQ4_CELCIUS

           COMPUTE SEQ4_FAHRENHEIT = (SEQ4_CELCIUS * 9 / 5) + 32
           MOVE SEQ4_FAHRENHEIT TO SEQ4_F_OUT
           DISPLAY "CONVERTED TO SEQ4_FAHRENHEIT: " SEQ4_F_OUT

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *TWO NUMBER OPERATIONS
       SEQ-3.
           
           MOVE 0 TO SEQ3_SolvedDisplay
           MOVE 0 TO SEQ3_NumberA
           MOVE 0 TO SEQ3_NumberB

           DISPLAY "Please input for A: " WITH NO ADVANCING
           ACCEPT SEQ3_NumberA
           MOVE SEQ3_NumberA TO SEQ3_A_OUT

           DISPLAY "Please input for B: " WITH NO ADVANCING
           ACCEPT SEQ3_NumberB
           MOVE SEQ3_NumberB TO SEQ3_B_OUT

           DISPLAY "ADDITION: "
           COMPUTE SEQ3_SolvedDisplay = SEQ3_NumberA + SEQ3_NumberB
           DISPLAY " " SEQ3_A_OUT, " + ", " " SEQ3_B_OUT, " = "  
-          SEQ3_SolvedDisplay

           DISPLAY "SUBSTRACTION: "
           COMPUTE SEQ3_SolvedDisplay = SEQ3_NumberA - SEQ3_NumberB
           DISPLAY " " SEQ3_A_OUT, " - ", " " SEQ3_B_OUT, " = "  
-          SEQ3_SolvedDisplay

           DISPLAY "MULTIPLICATION: "
           COMPUTE SEQ3_SolvedDisplay = SEQ3_NumberA * SEQ3_NumberB
           DISPLAY " " SEQ3_A_OUT, " * ", " " SEQ3_B_OUT, " = "  
-          SEQ3_SolvedDisplay

           DISPLAY "DIVISION: "
           COMPUTE SEQ3_SolvedDisplay = SEQ3_NumberA / SEQ3_NumberB
           DISPLAY " " SEQ3_A_OUT, " / ", " " SEQ3_B_OUT, " = "  
-          SEQ3_SolvedDisplay

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *SWAP TWO NUMBERS
       SEQ-2.
           DISPLAY "BEFORE SWAP: ".
           DISPLAY "A: " SEQ2_numA.
           DISPLAY "B: " SEQ2_numB.
 
           MOVE SEQ2_numB TO SEQ2_numC.
           MOVE SEQ2_numA TO SEQ2_numB.
           MOVE SEQ2_numC TO SEQ2_numA. 
 
           DISPLAY "AFTER SWAP: ".
           DISPLAY "A: " SEQ2_numA.
           DISPLAY "B: " SEQ2_numB.
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *PRINT NAME 5X
       SEQ-1.

           DISPLAY "GABRIEL E. SANCHEZ"
           DISPLAY "GABRIEL E. SANCHEZ"
           DISPLAY "GABRIEL E. SANCHEZ"
           DISPLAY "GABRIEL E. SANCHEZ"
           DISPLAY "GABRIEL E. SANCHEZ"

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
