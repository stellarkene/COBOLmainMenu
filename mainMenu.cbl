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
       01  USER-CHOICE-SEL         PIC 9(2).
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
                   PERFORM SELECTION-MENU
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
       
      *SELECTION MENU
       SELECTION-MENU.
           MOVE 0 TO USER-CHOICE-SEL
           PERFORM UNTIL USER-CHOICE-SEL = 11
           PERFORM CLEAR-SCREEN

           DISPLAY "==========================="
           DISPLAY "      SELECTION MENU        "
           DISPLAY "==========================="
           DISPLAY "1 - REVISED GRADES PASSED OR FAILED"
           DISPLAY "2 - POSITIVE OR NEGATIVE"
           DISPLAY "3 - EVEN OR ODD"
           DISPLAY "4 - LARGER OF TWO NUMBERS"
           DISPLAY "5 - SMALLEST OF THREE NUMBERS"
           DISPLAY "6 - REVISED GRADES WITH EQUIVALENT"
           DISPLAY "7 - TEMPERATURE INFORMATION"
           DISPLAY "8 - REVISED SALESMAN INFORMATION WITH COMISSION"
           DISPLAY "9 - NUMBER - DAY EQUIVALENT"
           DISPLAY "10 - VOWEL OR CONSONANT"
           DISPLAY "11 - EXIT SELECTION MENU"

           DISPLAY "ENTER CHOICE (1 - 11): " WITH NO ADVANCING
           ACCEPT USER-CHOICE-SEL
           
           EVALUATE USER-CHOICE-SEL

               WHEN 1
                   PERFORM CLEAR-SCREEN
                   DISPLAY "1 - REVISED GRADES PASSED OR FAILED"

               WHEN 2
                   PERFORM CLEAR-SCREEN
                   DISPLAY "2 - POSITIVE OR NEGATIVE"

               WHEN 3
                   PERFORM CLEAR-SCREEN
                   DISPLAY "3 - EVEN OR ODD"

               WHEN 4
                   PERFORM CLEAR-SCREEN
                   DISPLAY "4 - LARGER OF TWO NUMBERS"

               WHEN 5
                   PERFORM CLEAR-SCREEN
                   DISPLAY "5 - SMALLEST OF THREE NUMBERS"

               WHEN 6
                   PERFORM CLEAR-SCREEN
                   DISPLAY "6 - REVISED GRADES WITH EQUIVALENT"

               WHEN 7
                   PERFORM CLEAR-SCREEN
                   DISPLAY "7 - TEMPERATURE INFORMATION"

               WHEN 8
                   PERFORM CLEAR-SCREEN
                   DISPLAY "8 - REVISED SALESMAN INFORMATION"

               WHEN 9
                   PERFORM CLEAR-SCREEN
                   DISPLAY "9 - NUMBER - DAY EQUIVALENT"

               WHEN 10
                   PERFORM CLEAR-SCREEN
                   DISPLAY "10 - VOWEL OR CONSONANT"

               WHEN 11
                   PERFORM CLEAR-SCREEN
                   DISPLAY "EXITING SELECTION MENU"

               WHEN OTHER
                   DISPLAY "INVALID CHOICE PLEASE TRY AGAIN"

           END-EVALUATE
           
           END-PERFORM

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
           DISPLAY "11 - EXIT SEQUENCE MENU"
           
           DISPLAY "ENTER CHOICE (1 - 11): " WITH NO ADVANCING
           ACCEPT USER-CHOICE-SEQ

           EVALUATE USER-CHOICE-SEQ
           
               WHEN 1
                   PERFORM CLEAR-SCREEN
                   DISPLAY "1 - PRINT NAME 5 TIMES"
                   PERFORM SEQ-1

               WHEN 2
                   PERFORM CLEAR-SCREEN
                   DISPLAY "2 - SWAP TWO NUMBERS"
                   PERFORM SEQ-2

               WHEN 3
                   PERFORM CLEAR-SCREEN
                   DISPLAY "3 - TWO NUMBER OPERATIONS"
                   PERFORM SEQ-3

               WHEN 4
                   PERFORM CLEAR-SCREEN
                   DISPLAY "4 - CONVERT CELCIUS TO FAHRENHEIT"
                   PERFORM SEQ-4

               WHEN 5
                   PERFORM CLEAR-SCREEN
                   DISPLAY "5 - SALES-MAN INFORMATION"
                   PERFORM SEQ-5

               WHEN 6
                   PERFORM CLEAR-SCREEN
                   DISPLAY "6 - COMPUTE FOR AVERAGE"
                   PERFORM SEQ-6

               WHEN 7
                   PERFORM CLEAR-SCREEN
                   DISPLAY "7 - CUBE AND SQUARE OF A NUMBER"
                   PERFORM SEQ-7

               WHEN 8
                   PERFORM CLEAR-SCREEN
                   DISPLAY "8 - AREA AND PERIMETER OF A RECTANGLE"
                   PERFORM SEQ-8

               WHEN 9
                   PERFORM CLEAR-SCREEN
                   DISPLAY "9 - AREA AND CIRCUMFERENCE OF A CIRCLE"
                   PERFORM SEQ-9

               WHEN 10
                   PERFORM CLEAR-SCREEN
                   DISPLAY "10 - AREA AND PERIMETER OF A TRIANGLE"
                   PERFORM SEQ-10

               WHEN 11
                   PERFORM CLEAR-SCREEN
                   DISPLAY "EXITING SEQUENCE MENU"

               WHEN OTHER 
                   DISPLAY "INVALID CHOICE PLEASE TRY AGIAN"

           END-EVALUATE 

           
           END-PERFORM
           EXIT PARAGRAPH.

      *AREA AND PERIMETER OF A TRIANGLE
       SEQ-10.
           
           DISPLAY "INPUT BASE: " WITH NO ADVANCING
           ACCEPT SEQ10_T_BASE

           DISPLAY "INPUT HEIGHT: " WITH NO ADVANCING
           ACCEPT SEQ10_T_HEIGHT

           COMPUTE SEQ10_T_AREA = 1/2 * SEQ10_T_BASE * SEQ10_T_HEIGHT
           DISPLAY "AREA: " SEQ10_T_AREA

           DISPLAY "INPUT SIDE A: " WITH NO ADVANCING
           ACCEPT SEQ10_SIDE_A

           DISPLAY "INPUT SIDE B: " WITH NO ADVANCING
           ACCEPT SEQ10_SIDE_B
           
           DISPLAY "INPUT SIDE C: " WITH NO ADVANCING
           ACCEPT SEQ10_SIDE_C
           
           COMPUTE SEQ10_T_PERI = 
-              SEQ10_SIDE_A + SEQ10_SIDE_B + SEQ10_SIDE_C
           DISPLAY "PERIMETER: " SEQ10_T_PERI

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *AREA AND CIRCUMFERENCE OF A CIRCLE
       SEQ-9.
           DISPLAY "PLEASE INPUT DIAMETER: " WITH NO ADVANCING
           ACCEPT SEQ9_DIAMETER

           COMPUTE SEQ9_RADIUS = SEQ9_DIAMETER / 2
           COMPUTE SEQ9_CIR_AREA = SEQ9_PI * SEQ9_RADIUS * SEQ9_RADIUS
           DISPLAY "AREA: " SEQ9_CIR_AREA

           COMPUTE SEQ9_CIRCUMEFERENCE = 2 * SEQ9_PI * SEQ9_RADIUS
           DISPLAY "CIRCUMFERENCE: " SEQ9_CIRCUMEFERENCE

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *AREA AND PERIMETER OF A RECTANGLE
       SEQ-8.
           
           DISPLAY "PLEASE INPUT WIDTH: " WITH NO ADVANCING
           ACCEPT SEQ8_RECT_WIDTH

           DISPLAY "PLEASE INPUT LENGTH: " WITH NO ADVANCING
           ACCEPT SEQ8_RECT_LENGTH

           COMPUTE SEQ8_RECT_AREA = SEQ8_RECT_WIDTH * SEQ8_RECT_LENGTH
           DISPLAY "AREA: " SEQ8_RECT_AREA

           COMPUTE SEQ8_RECT_PERIMETER = 
-          2 * (SEQ8_RECT_WIDTH + SEQ8_RECT_LENGTH)

           DISPLAY "PERIMETER: " SEQ8_RECT_PERIMETER

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *CUBE AND SQUARE OF A NUMBER
       SEQ-7.
           DISPLAY "PLEASE INPUT A NUMBER: " WITH NO ADVANCING
           ACCEPT SEQ7_USER_NUMBER

           COMPUTE SEQ7_STORE_RESULT = 
-              SEQ7_USER_NUMBER * SEQ7_USER_NUMBER
           DISPLAY "SQUARE: " SEQ7_STORE_RESULT
           
           COMPUTE SEQ7_STORE_RESULT = SEQ7_USER_NUMBER 
-          * SEQ7_USER_NUMBER * SEQ7_USER_NUMBER
           DISPLAY "CUBE: " SEQ7_STORE_RESULT
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *COMPUTE AVERAGE GRADE
       SEQ-6.
           DISPLAY "PLEASE ENTER PRELIM: " WITH NO ADVANCING
           ACCEPT SEQ6_Prelim

           DISPLAY "PLEASE ENTER MIDTERM: " WITH NO ADVANCING
           ACCEPT SEQ6_Midterm

           DISPLAY "PLEASE ENTER FINALS: " WITH NO ADVANCING
           ACCEPT SEQ6_Finals

           COMPUTE SEQ6_Average = 
-              (SEQ6_Prelim + SEQ6_Midterm + SEQ6_Finals) / 3
           DISPLAY "AVERAGE: " SEQ6_Average

           PERFORM EXIT-PROMPT
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
           
           DISPLAY "PLEASE INPUT CELCIUS: " WITH NO ADVANCING
           ACCEPT SEQ4_CELCIUS

           COMPUTE SEQ4_FAHRENHEIT = (SEQ4_CELCIUS * 9 / 5) + 32
           MOVE SEQ4_FAHRENHEIT TO SEQ4_F_OUT
           DISPLAY "CONVERTED TO FAHRENHEIT: " SEQ4_F_OUT

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
