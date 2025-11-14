      *Programmer name: Gabriel Sanchez
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ITERATION-MENU.

       DATA DIVISION.
               
           WORKING-STORAGE SECTION.
               COPY "iterationMenu.cpy".

       01  OS-NAME                 PIC X(50).
       01  CLEAR-COMMAND           PIC X(10).
       01  USER-CHOICE             PIC 9.
       01  TEST-PRINT              PIC X(10).

      *ITE
       01  USER-CHOICE-ITE         PIC 9(2).



       PROCEDURE DIVISION.
           PERFORM ITERATION-MENU.

           STOP RUN.

      *ITERATION MENU
       ITERATION-MENU.
           MOVE 0 TO USER-CHOICE-ITE
           PERFORM UNTIL USER-CHOICE-ITE = 11
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
                   DISPLAY "1 - PRINT NAME 5 TIMES"
                   PERFORM ITE-1

               WHEN 2
                   PERFORM CLEAR-SCREEN
                   DISPLAY "2 - PRINT 1 TO 5"
                   PERFORM ITE-2

               WHEN 3
                   PERFORM CLEAR-SCREEN
                   DISPLAY "3 - PRINT EVEN NUMBERS TO N"
                   PERFORM ITE-3

               WHEN 4
                   PERFORM CLEAR-SCREEN
                   DISPLAY "4 - PRINT NUMBERS FROM N TO M"
                   PERFORM ITE-4

               WHEN 5
                   PERFORM CLEAR-SCREEN
                   DISPLAY "5 - SUM OF ODD NUMBERS FROM N TO M"
                   PERFORM ITE-5

               WHEN 6
                   PERFORM CLEAR-SCREEN
                   DISPLAY "6 - FACTORIAL OF A NUMBER"
                   PERFORM ITE-6

               WHEN 7
                   PERFORM CLEAR-SCREEN
                   DISPLAY "7 - GIVE SUM OF THE DIGITS"
                   PERFORM ITE-7

               WHEN 8
                   PERFORM CLEAR-SCREEN
                   DISPLAY "8 - FIBONACCI"
                   PERFORM ITE-8

               WHEN 9 
                   PERFORM CLEAR-SCREEN
                   DISPLAY "9 - PRIME NUMBER OR NOT"
                   PERFORM ITE-9

               WHEN 10
                   PERFORM CLEAR-SCREEN
                   DISPLAY "10 - DECIMAL TO BINARY"
                   PERFORM ITE-10

               WHEN 11
                   PERFORM CLEAR-SCREEN
                   DISPLAY "EXITING ITERATION MENU"

               WHEN OTHER 
                   PERFORM CLEAR-SCREEN
                   DISPLAY "PLEASE TRY AGAIN"
           END-EVALUATE
               
           END-PERFORM 

           EXIT PARAGRAPH.

      *DECIMAL TO BINARY
       ITE-10.
           MOVE 0 TO ITE10_CALC_INPUT
           MOVE 0 TO ITE10_STORE_BINARY
           MOVE 1 TO ITE10_PLACE_VALUE
           DISPLAY "PLEASE INPUT A DECIMAL NUMBER: " WITH NO ADVANCING
           ACCEPT ITE10_USER_INPUT
           MOVE ITE10_USER_INPUT TO ITE10_USERINT_OUT

           DISPLAY "DECIMAL: " ITE10_USERINT_OUT
           PERFORM UNTIL ITE10_USER_INPUT = 0
               COMPUTE ITE10_UI_REMAINDER = 
-                  FUNCTION MOD(ITE10_USER_INPUT, 2)
               COMPUTE ITE10_CALC_INPUT = 
-                  ITE10_CALC_INPUT + (ITE10_UI_REMAINDER 
-                  * ITE10_PLACE_VALUE)
               COMPUTE ITE10_PLACE_VALUE = ITE10_PLACE_VALUE * 10
               COMPUTE ITE10_USER_INPUT = ITE10_USER_INPUT / 2
           END-PERFORM

           MOVE ITE10_CALC_INPUT TO ITE10_STORE_BINARY
           
           DISPLAY "BINARY: " ITE10_STORE_BINARY
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *PRIME NUMBER OR NOT
       ITE-9.
           
           DISPLAY "PLEASE INPUT A NUMBER: " WITH NO ADVANCING
           ACCEPT ITE9_USER_COUNTER

           MOVE ITE9_USER_COUNTER TO ITE9_USER_COUNTER_OUT
           DISPLAY ITE9_USER_COUNTER_OUT " IS " WITH NO ADVANCING
           
           EVALUATE TRUE
           WHEN ITE9_USER_COUNTER = 0 OR ITE9_USER_COUNTER = 1
               DISPLAY "NOT A PRIME NUMBER"
               PERFORM EXIT-PROMPT
               EXIT PARAGRAPH
               
           WHEN ITE9_USER_COUNTER = 2 
               DISPLAY "A PRIME NUMBER"
               PERFORM EXIT-PROMPT
               EXIT PARAGRAPH
               
           END-EVALUATE

           MOVE 1 TO ITE9_P_N
           MOVE 2 TO ITE9_LOOP_COUNT
           PERFORM UNTIL ITE9_LOOP_COUNT = ITE9_USER_COUNTER
               IF FUNCTION MOD(ITE9_USER_COUNTER, ITE9_LOOP_COUNT) = 0  
                   MOVE 0 TO ITE9_P_N
                   EXIT PERFORM
               END-IF
               
               ADD 1 TO ITE9_LOOP_COUNT
           END-PERFORM
           
           IF ITE9_P_N = 1
               DISPLAY  " A PRIME NUMBER"
           ELSE
               DISPLAY  " NOT A PRIME NUMBER"
           END-IF
       
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *FIBONACCI
       ITE-8.

           DISPLAY "PLEASE INPUT A NUMBER: " WITH NO ADVANCING
           ACCEPT ITE8_USER_COUNTER

           EVALUATE TRUE
           WHEN ITE8_USER_COUNTER = 1
               DISPLAY "0"
               PERFORM EXIT-PROMPT
               EXIT PARAGRAPH
           WHEN ITE8_USER_COUNTER = 2
               DISPLAY "0 , 1"
               PERFORM EXIT-PROMPT
               EXIT PARAGRAPH
           END-EVALUATE

           PERFORM UNTIL ITE8_USER_COUNTER = 0
               MOVE ITE8_FIRST_TERM TO ITE8_NT_OUT
               DISPLAY ITE8_NT_OUT ", " WITH NO ADVANCING
               COMPUTE ITE8_NEXT_TERM = 
-                  ITE8_FIRST_TERM + ITE8_SECOND_TERM
               MOVE ITE8_SECOND_TERM TO ITE8_FIRST_TERM
               MOVE ITE8_NEXT_TERM TO ITE8_SECOND_TERM
               
               SUBTRACT 1 FROM ITE8_USER_COUNTER
           END-PERFORM
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *SUM OF THE DIGITS
       ITE-7.
           MOVE 0 TO ITE7_CALC_SUM
           DISPLAY "PLEASE INPUT A NUMBER: " WITH NO ADVANCING
           ACCEPT ITE7_USER_INPUT

           PERFORM UNTIL ITE7_USER_INPUT = 0
               ADD FUNCTION MOD(ITE7_USER_INPUT, 10) TO ITE7_CALC_SUM
               COMPUTE ITE7_USER_INPUT = ITE7_USER_INPUT / 10
           END-PERFORM
           
           MOVE ITE7_CALC_SUM TO ITE7_STORE_SUM
           DISPLAY "IS: " ITE7_STORE_SUM
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *FACTORIAL
       ITE-6.
           
           MOVE 21 TO ITE6_USER_INPUT
           
           PERFORM UNTIL ITE6_USER_INPUT <= 20
               DISPLAY "PLEASE INPUT A NUMBER: " WITH NO ADVANCING
               ACCEPT ITE6_USER_INPUT
               IF ITE6_USER_INPUT > 20
                   DISPLAY "FACTORIAL TOO LARGE PLEASE INPUT BELOW 21."
               END-IF
           END-PERFORM

           MOVE ITE6_USER_INPUT TO ITE6_COUNTER
           IF ITE6_USER_INPUT = 0 
               DISPLAY "1"
               EXIT PARAGRAPH
           END-IF
           MOVE 1 TO ITE6_CALC_FACTORIAL

           PERFORM UNTIL ITE6_COUNTER = 1
               COMPUTE ITE6_CALC_FACTORIAL = 
-                  ITE6_CALC_FACTORIAL * ITE6_COUNTER
               SUBTRACT 1 FROM ITE6_COUNTER
           END-PERFORM
           
           
           MOVE ITE6_CALC_FACTORIAL TO ITE6_STORE_FAC
           DISPLAY "FACTORIAL OF " 
-                  ITE6_USER_INPUT " IS " ITE6_STORE_FAC
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *SUM OF ODD NUMBERS FROM N TO M
       ITE-5.

           MOVE 0 TO ITE5_STORE_SUM
           DISPLAY "PLEASE INSERT A NUMBER: " WITH NO ADVANCING
           ACCEPT ITE5_USER_INPUT_N

           DISPLAY "PLEASE INPUT ANOTHER NUMBER: " WITH NO ADVANCING
           ACCEPT ITE5_USER_INPUT_M

           MOVE ITE5_USER_INPUT_N TO ITE5_COUNTER

           PERFORM UNTIL ITE5_COUNTER > ITE5_USER_INPUT_M
               IF FUNCTION MOD(ITE5_COUNTER, 2) IS NOT EQUAL TO 0
                   ADD ITE5_COUNTER TO ITE5_STORE_SUM
               END-IF
               ADD 1 TO ITE5_COUNTER
           END-PERFORM
           
           MOVE ITE5_STORE_SUM TO ITE5_SUM_OUT
           DISPLAY "SUM OF ODD NUMBERS: " ITE5_SUM_OUT
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *PRINT NUMBERS FROM N TO M
       ITE-4.

           MOVE 0 TO ITE4_COUNTER
           DISPLAY "PLEASE ENTER A NUMBER: " WITH NO ADVANCING
           ACCEPT ITE4_USER_INPUT_N

           DISPLAY "PLEASE ENTER ANOTHER NUMBER: " WITH NO ADVANCING
           ACCEPT ITE4_USER_INPUT_M


           MOVE ITE4_USER_INPUT_N TO ITE4_COUNTER

           PERFORM UNTIL ITE4_COUNTER > ITE4_USER_INPUT_M

               IF FUNCTION MOD(ITE4_COUNTER, 2) = 0
                   MOVE ITE4_COUNTER TO ITE4_STORE_OUTPUT
                   DISPLAY ITE4_STORE_OUTPUT
               END-IF
               
               ADD 1 TO ITE4_COUNTER
           END-PERFORM
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *PRINT EVEN NUMBERS TO N
       ITE-3.

           DISPLAY "PLEASE ENTER A NUMBER: " WITH NO ADVANCING
           ACCEPT ITE3_USER_INPUT_IN

           MOVE 1 TO ITE3_COUNTER
           PERFORM ITE3_USER_INPUT_IN TIMES

               IF FUNCTION MOD(ITE3_COUNTER, 2) IS EQUAL TO 0
                   MOVE ITE3_COUNTER TO ITE3_USER_INTPUT_OUT
                   DISPLAY ITE3_USER_INTPUT_OUT
               END-IF

               ADD 1 TO ITE3_COUNTER
           END-PERFORM
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *PRINT 1 TO 5
       ITE-2.

           MOVE 1 TO ITE2_COUNTER
           PERFORM 5 TIMES 
               DISPLAY ITE2_COUNTER
               ADD 1 TO ITE2_COUNTER
           END-PERFORM
           
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *PRINT NAME 5 TIMES
       ITE-1.

           PERFORM ITE1_COUNTER TIMES
               DISPLAY "GABRIEL E. SANCHEZ"
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
