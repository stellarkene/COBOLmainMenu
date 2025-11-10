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
                   PERFORM ITERATION-MENU
                   PERFORM EXIT-PROMPT

               WHEN 4
                   DISPLAY "4 - EXITING PROGRAM"
                   

               WHEN OTHER 
                   DISPLAY "INVALID INPUT PLEASE TRY AGAIN"
           
           END-EVALUATE

           END-PERFORM

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *ITERATION MENU
       ITERATION-MENU.
           MOVE 0 TO USER-CHOICE-ITE
           PERFORM UNTIL USER-CHOICE-ITE
           PERFORM CLEAR-SCREEN
           
           DISPLAY "==========================="
           DISPLAY "      ITERATION MENU        "
           DISPLAY "==========================="
           DISPLAY "1 - PRINT NAME 5 TIMES"
           DISPLAY "2 - PRINT 1 TO 5"
           DISPLAY "3 - PRINT EVEN NUMBERS TO N"
           DISPLAY "4 - PRINT NUMBERS FROM N TO M"
           DISPLAY "5 - SUM OF ODD NUMBERS FROM N TO M"
           DISPLAY "6 - FACTORIAL OF A NUMBER"
           DISPLAY "7 - GIVE SUM OF THE DIGITS"
           DISPLAY "8 - FIBONACCI"
           DISPLAY "9 - PRIME NUMBER OR NOT"
           DISPLAY "10 - DECIMAL TO BINARY"
           DISPLAY "11 - EXIT ITERATION MENU"

           DISPLAY "ENTER CHOICE (1 - 11): " WITH NO ADVANCING
           ACCEPT USER-CHOICE-ITE

           EVALUATE USER-CHOICE-ITE
               WHEN 1
                   PERFORM CLEAR-SCREEN

               WHEN 2
                   PERFORM CLEAR-SCREEN

               WHEN 3
                   PERFORM CLEAR-SCREEN

               WHEN 4
                   PERFORM CLEAR-SCREEN

               WHEN 5
                   PERFORM CLEAR-SCREEN

               WHEN 6
                   PERFORM CLEAR-SCREEN

               WHEN 7
                   PERFORM CLEAR-SCREEN

               WHEN 8
                   PERFORM CLEAR-SCREEN

               WHEN 9 
                   PERFORM CLEAR-SCREEN

               WHEN 10
                   PERFORM CLEAR-SCREEN

               WHEN 11
                   PERFORM CLEAR-SCREEN
                   DISPLAY "EXITING ITERATION MENU"

               WHEN OTHER  
                   DISPLAY "PLEASE TRY AGAIN"
           END-EVALUATE
               
           END-PERFORM 

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
                   PERFORM SEL-1

               WHEN 2
                   PERFORM CLEAR-SCREEN
                   DISPLAY "2 - POSITIVE OR NEGATIVE"
                   PERFORM SEL-2

               WHEN 3
                   PERFORM CLEAR-SCREEN
                   DISPLAY "3 - EVEN OR ODD"
                   PERFORM SEL-3

               WHEN 4
                   PERFORM CLEAR-SCREEN
                   DISPLAY "4 - LARGER OF TWO NUMBERS"
                   PERFORM SEL-4

               WHEN 5
                   PERFORM CLEAR-SCREEN
                   DISPLAY "5 - SMALLEST OF THREE NUMBERS"
                   PERFORM SEL-5

               WHEN 6
                   PERFORM CLEAR-SCREEN
                   DISPLAY "6 - REVISED GRADES WITH EQUIVALENT"
                   PERFORM SEL-6

               WHEN 7
                   PERFORM CLEAR-SCREEN
                   DISPLAY "7 - TEMPERATURE INFORMATION"
                   PERFORM SEL-7

               WHEN 8
                   PERFORM CLEAR-SCREEN
                   DISPLAY "8 - REVISED SALESMAN INFORMATION"
                   PERFORM SEL-8

               WHEN 9
                   PERFORM CLEAR-SCREEN
                   DISPLAY "9 - NUMBER - DAY EQUIVALENT"
                   PERFORM SEL-9

               WHEN 10
                   PERFORM CLEAR-SCREEN
                   DISPLAY "10 - VOWEL OR CONSONANT"
                   PERFORM SEL-10

               WHEN 11
                   PERFORM CLEAR-SCREEN
                   DISPLAY "EXITING SELECTION MENU"

               WHEN OTHER
                   DISPLAY "INVALID CHOICE PLEASE TRY AGAIN"

           END-EVALUATE
           
           END-PERFORM

           EXIT PARAGRAPH.

      *VOWEL OR CONSONANT
       SEL-10.
           
           DISPLAY "PLEASE INPUT A CHARACTER: " WITH NO ADVANCING
           ACCEPT SEL10_USER_CHARAC

           IF SEL10_USER_CHARAC = 'A' OR SEL10_USER_CHARAC = "a" OR
-              SEL10_USER_CHARAC = 'E' OR SEL10_USER_CHARAC = "e" OR
-              SEL10_USER_CHARAC = 'I' OR SEL10_USER_CHARAC = "i" OR
-              SEL10_USER_CHARAC = 'O' OR SEL10_USER_CHARAC = "o" OR
-              SEL10_USER_CHARAC = 'U' OR SEL10_USER_CHARAC = "u" 
           
               DISPLAY SEL10_USER_CHARAC " IS A VOWEL"
           ELSE 
               DISPLAY SEL10_USER_CHARAC " IS A CONSONANT"
           END-IF

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *NUMBER - DAY EQUIVALENT
       SEL-9.
           MOVE 0 TO SEL9_USER_NUM
           DISPLAY "PLEASE INPUT A NUMBER(1-7): " WITH NO ADVANCING
           ACCEPT SEL9_USER_NUM

           EVALUATE TRUE
           WHEN SEL9_USER_NUM = 1
               DISPLAY "ITS MONDAY!"
               
           WHEN SEL9_USER_NUM = 2
               DISPLAY "ITS TUESDAY!"

           WHEN SEL9_USER_NUM = 3
               DISPLAY "ITS WEDNESDAY"

           WHEN SEL9_USER_NUM = 4
               DISPLAY "ITS THURSDAY!"

           WHEN SEL9_USER_NUM = 5
               DISPLAY "ITS FRIDAY!"

           WHEN SEL9_USER_NUM = 6
               DISPLAY "ITS SATURDAY!"

           WHEN SEL9_USER_NUM = 7
               DISPLAY "ITS SUNDAY!"

           WHEN OTHER 
               DISPLAY "INVALID INPUT"

           END-EVALUATE

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *REVISED SALESMAN INFORMATION
       SEL-8.
           DISPLAY "PLEASE ENTER NUMBER: " WITH NO ADVANCING
           ACCEPT SEL8_SM_NUM

           DISPLAY "PLEASE ENTER NAME: " WITH NO ADVANCING
           ACCEPT SEL8_SM_NAME

           DISPLAY "PLEASE ENTER UNITS SOLD: " WITH NO ADVANCING
           ACCEPT SEL8_UNIT_SOLD

           DISPLAY "PLEASE ENTER UNIT PRICE: " WITH NO ADVANCING
           ACCEPT  SEL8_UNIT_PRICE

           COMPUTE SEL8_SOLVE_SALES = SEL8_UNIT_SOLD * SEL8_UNIT_PRICE
           MOVE SEL8_SOLVE_SALES TO SEL8_SALES_OUT
           DISPLAY "TOTAL SALES: " SEL8_SALES_OUT
           
           EVALUATE TRUE
           WHEN SEL8_SOLVE_SALES <= 15000
               COMPUTE SEL8_SOLVE_COMMISSION = SEL8_SOLVE_SALES * .15
               MOVE SEL8_SOLVE_COMMISSION TO SEL8_COMMISSION_OUT
               DISPLAY "WITH 15% COMMISSION AMOUNTING TO: " 
-                  SEL8_COMMISSION_OUT
           WHEN SEL8_SOLVE_SALES <= 20000
               COMPUTE SEL8_SOLVE_COMMISSION = SEL8_SOLVE_SALES * .20
               MOVE SEL8_SOLVE_COMMISSION TO SEL8_COMMISSION_OUT
               DISPLAY "WITH 20% COMMISSION AMOUNTING TO: " 
-                  SEL8_COMMISSION_OUT
           WHEN SEL8_SOLVE_SALES <= 25000
               COMPUTE SEL8_SOLVE_COMMISSION = SEL8_SOLVE_SALES * .25
               MOVE SEL8_SOLVE_COMMISSION TO SEL8_COMMISSION_OUT
               DISPLAY "WITH 25% COMMISSION AMOUNTING TO: " 
-                  SEL8_COMMISSION_OUT
           WHEN SEL8_SOLVE_SALES <= 30000
               COMPUTE SEL8_SOLVE_COMMISSION = SEL8_SOLVE_SALES * .30
               MOVE SEL8_SOLVE_COMMISSION TO SEL8_COMMISSION_OUT
               DISPLAY "WITH 30% COMMISSION AMOUNTING TO: " 
-                  SEL8_COMMISSION_OUT
           WHEN SEL8_SOLVE_SALES > 30000
               COMPUTE SEL8_SOLVE_COMMISSION = SEL8_SOLVE_SALES * .40
               MOVE SEL8_SOLVE_COMMISSION TO SEL8_COMMISSION_OUT
               DISPLAY "WITH 40% COMMISSION AMOUNTING TO: " 
-                  SEL8_COMMISSION_OUT
           END-EVALUATE

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *TEMPERATURE INFORMATION
       SEL-7.
           
           DISPLAY "PLEASE ENTER YOUR TEMPERATURE: " WITH NO ADVANCING
           ACCEPT SEL7_USER_TEMP_IN
           
           EVALUATE TRUE
           WHEN  SEL7_USER_TEMP_IN < 0
               DISPLAY "FREEZING WEATHER."

           WHEN SEL7_USER_TEMP_IN >= 0 AND SEL7_USER_TEMP_IN <= 10
               DISPLAY "VERY COLD WEATHER."

           WHEN SEL7_USER_TEMP_IN >= 11 AND SEL7_USER_TEMP_IN <= 20
               DISPLAY "COLD WEATHER."

           WHEN SEL7_USER_TEMP_IN >= 21 AND SEL7_USER_TEMP_IN <= 30
               DISPLAY "NORMAL TEMPERATURE." 

           WHEN SEL7_USER_TEMP_IN >= 31 AND SEL7_USER_TEMP_IN <= 40
               DISPLAY "ITS HOT."

           WHEN OTHER
               DISPLAY "ITS VERY HOT."
               
           END-EVALUATE

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *REVISED GRADES WITH EQUIVALENT
       SEL-6.

           DISPLAY "PLEASE INPUT PRELIM: " WITH NO ADVANCING
           ACCEPT SEL6_PRELIM_IN

           DISPLAY "PLEASE INPUT MIDTERMS: " WITH NO ADVANCING
           ACCEPT SEL6_MIDTERMS_IN

           DISPLAY "PLEASE INPUT FINALS: " WITH NO ADVANCING
           ACCEPT SEL6_FINALS_IN

           COMPUTE SEL6_CALC_AVE = 
-              (SEL6_PRELIM_IN + SEL6_MIDTERMS_IN + SEL6_FINALS_IN) / 3
           MOVE SEL6_CALC_AVE TO SEL6_AVE_OUT

           DISPLAY "NUMERICAL GRADE: " SEL6_AVE_OUT
           
           EVALUATE TRUE
           WHEN SEL6_CALC_AVE > 100 
               DISPLAY "GRADE EXCEEDED LIMIT."

           WHEN SEL6_CALC_AVE >= 97 AND SEL6_CALC_AVE <= 100
               DISPLAY "EQUIVALENT GRADE: 1.00"

           WHEN SEL6_CALC_AVE >= 94 AND SEL6_CALC_AVE <= 96
               DISPLAY "EQUIVALNET GRADE: 1.25"

           WHEN SEL6_CALC_AVE >= 91 AND SEL6_CALC_AVE <= 93
               DISPLAY "EQUIVALENT GRADE: 1.5"

           WHEN SEL6_CALC_AVE >= 88 AND SEL6_CALC_AVE <= 90
               DISPLAY "EQUIVALENT GRADE: 1.75"

           WHEN SEL6_CALC_AVE >= 85 AND  SEL6_CALC_AVE <= 87
               DISPLAY "EQUIVALENT GRADE: 2.00"

           WHEN SEL6_CALC_AVE >= 82 AND SEL6_CALC_AVE <= 84
               DISPLAY "EQUIVALENT GRADE: 2.25"

           WHEN SEL6_CALC_AVE >= 79 AND SEL6_CALC_AVE <= 81
               DISPLAY "EQUIVALENT GRADE: 2.5"

           WHEN SEL6_CALC_AVE >= 76 AND SEL6_CALC_AVE <= 78
               DISPLAY "EQUIVALENT GRADE: 2.75" 

           WHEN SEL6_CALC_AVE = 75
               DISPLAY "EQUIVALENT GRADE: 3.00"

           WHEN OTHER 
               DISPLAY "EQUIVALENT GRADE: 5.00"
               
           END-EVALUATE

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *SMALLEST OF THREE
       SEL-5.
           DISPLAY "PLEASE INPUT THE FIRST NUMBER: "
-             WITH NO ADVANCING
           ACCEPT SEL5_F_INPUT
           MOVE SEL5_F_INPUT TO SEL5_F_OUTPUT

           DISPLAY "PLEASE INPUT THE SECOND NUMBER: "
-              WITH NO ADVANCING
           ACCEPT SEL5_S_INPUT
           MOVE SEL5_S_INPUT TO SEL5_S_OUTPUT

           DISPLAY "PLEASE INPUT THE THIRD NUMBER: "
-              WITH NO ADVANCING
           ACCEPT SEL5_T_INPUT
           MOVE SEL5_T_INPUT TO SEL5_T_OUTPUT
           
           EVALUATE TRUE

           WHEN SEL5_F_INPUT <= SEL5_S_INPUT 
-              AND SEL5_F_INPUT <= SEL5_T_INPUT
                   DISPLAY SEL5_F_OUTPUT " IS THE LOWEST NUMBER"

           WHEN SEL5_S_INPUT <= SEL5_F_INPUT 
-              AND SEL5_S_INPUT <= SEL5_T_INPUT
                   DISPLAY SEL5_S_OUTPUT " IS THE LOWEST NUMBER"

           WHEN OTHER 
               DISPLAY SEL5_T_OUTPUT " IS THE LOWEST NUMBER"
           END-EVALUATE

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *LARGER OF THE TWO
       SEL-4.
           
           DISPLAY "PLEASE ENTER A NUMBER: " WITH NO ADVANCING
           ACCEPT SEL4_FIRST_INPUT
           MOVE SEL4_FIRST_INPUT TO SEL4_FIRST_INPUT_OUT

           DISPLAY "PLEASE ENTER ANOTHER NUMBER: " WITH NO ADVANCING
           ACCEPT SEL4_SEC_INPUT
           MOVE SEL4_SEC_INPUT TO SEL4_SEC_INPUT_OUT

           EVALUATE TRUE
           WHEN SEL4_FIRST_INPUT > SEL4_SEC_INPUT
               DISPLAY SEL4_FIRST_INPUT_OUT " IS GREATER THAN " 
-                  SEL4_SEC_INPUT_OUT

           WHEN SEL4_FIRST_INPUT < SEL4_SEC_INPUT
               DISPLAY SEL4_SEC_INPUT_OUT " IS GREATER THAN "
-                  SEL4_FIRST_INPUT_OUT

           WHEN OTHER
               DISPLAY "INPUTS ARE EQUAL"
               
           END-EVALUATE

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *EVEN OR ODD
       SEL-3.
           
           DISPLAY "PLEASE INPUT A NUMBER: " WITH NO ADVANCING
           ACCEPT SEL3_USER_INPUT_IN
           MOVE SEL3_USER_INPUT_IN TO SEL3_USER_INPUT_OUT

           IF FUNCTION MOD(SEL3_USER_INPUT_IN, 2) = 0
               DISPLAY SEL3_USER_INPUT_OUT WITH NO ADVANCING " IS EVEN"
           ELSE 
               DISPLAY SEL3_USER_INPUT_OUT WITH NO ADVANCING " IS ODD"
           END-IF

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *POSITIVE OR NEGATIVE
       SEL-2.
           DISPLAY "PLEASE INPUT A NUMBER: " WITH NO ADVANCING
           ACCEPT SEL2_USER_INPUT
           MOVE SEL2_USER_INPUT TO SEL2_INPUT_OUT
           
           EVALUATE TRUE
           WHEN SEL2_USER_INPUT > 0
               DISPLAY SEL2_INPUT_OUT, " IS POSITIVE"

           WHEN SEL2_USER_INPUT < 0 
               DISPLAY "-" SEL2_INPUT_OUT, " IS NEGATIVE"

           WHEN OTHER 
               DISPLAY SEL2_INPUT_OUT, " IS ZERO"
               
           END-EVALUATE
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *REVISED GRADES PASSED OR FAILED
       SEL-1.
           MOVE 0 TO SEL1_COMPUTE_AVE
           DISPLAY "PLEASE INPUT PRELIM: " WITH NO ADVANCING
           ACCEPT SEL1_PRELIM_IN

           DISPLAY "PLEASE INPUT MIDTERMS: " WITH NO ADVANCING
           ACCEPT SEL1_MIDTERMS_IN

           DISPLAY "PLEASE INPUT FINALS: " WITH NO ADVANCING
           ACCEPT SEL1_FINALS_IN

           COMPUTE SEL1_COMPUTE_AVE = 
-          (SEL1_PRELIM_IN + SEL1_MIDTERMS_IN + SEL1_FINALS_IN) / 3
           MOVE SEL1_COMPUTE_AVE TO SEL1_AVE_OUT

           DISPLAY "AVERAGE IS: " SEL1_AVE_OUT

           IF SEL1_COMPUTE_AVE >= 75
               DISPLAY "PASSED"
           ELSE 
               DISPLAY "FAILED"
           END-IF

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
