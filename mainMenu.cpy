      *SEQ_2
       01  SEQ2_numA                   PIC Z(2) VALUE 10.
       01  SEQ2_numB                   PIC Z(2) VALUE 5.
       01  SEQ2_numC                   PIC Z(2).

      *SEQ_3
       01  SEQ3_NumberA                PIC 999999V99.
       01  SEQ3_A_OUT                  PIC ZZZ,ZZZ.ZZ.
       01  SEQ3_NumberB                PIC 999999V99.
       01  SEQ3_B_OUT                  PIC ZZZ,ZZZ.ZZ.
       01  SEQ3_SolvedDisplay          PIC ZZZ,ZZZ.99.

      *SEQ_4
       01  SEQ4_CELCIUS                PIC S9(5)v99.
       01  SEQ4_FAHRENHEIT             PIC S9(7)v99.
       01  SEQ4_F_OUT                  PIC +Z,ZZZ,ZZZ.99.

      *SEQ_5
       01  SEQ5_SALES_MAN_NUM          PIC 9(12).
       01  SEQ5_SALES_MAN_NAME         PIC X(25).
       01  SEQ5_UNIT_SOLD              PIC 9(5).
       01  SEQ5_UNIT_PRICE             PIC 9(5)v99.
       01  SEQ5_STORE_TOTAL_SALES      PIC $ZZ,ZZ9.

      *SEQ_6
       01  SEQ6_Prelim                 PIC 9(3).
       01  SEQ6_Midterm                PIC 9(3).
       01  SEQ6_Finals                 PIC 9(3).
       01  SEQ6_Average                PIC Z99.99.

      *SEQ_7
       01  SEQ7_USER_NUMBER            PIC 9(6).
       01  SEQ7_STORE_RESULT           PIC ZZ,999.

      *SEQ_8
       01  SEQ8_RECT_WIDTH             PIC 9(3).
       01  SEQ8_RECT_LENGTH            PIC 9(3).
       01  SEQ8_RECT_AREA              PIC Z(3)V99.
       01  SEQ8_RECT_PERIMETER         PIC Z(3)V99.

      *SEQ_9
       01  SEQ9_PI                     PIC 9(1)V99 VALUE 3.14.
       01  SEQ9_DIAMETER               PIC 9(4).
       01  SEQ9_RADIUS                 PIC 9(4)V99.
       01  SEQ9_CIR_AREA               PIC Z,ZZZV99.
       01  SEQ9_CIRCUMEFERENCE         PIC Z,ZZZV99.

      *SEQ-10
       01  SEQ10_SIDE_A                PIC 9(3).
       01  SEQ10_SIDE_B                PIC 9(3).
       01  SEQ10_SIDE_C                PIC 9(3).
       01  SEQ10_T_BASE                PIC 9(3).
       01  SEQ10_T_HEIGHT              PIC 9(3).
       01  SEQ10_T_AREA                PIC Z(3).99.
       01  SEQ10_T_PERI                PIC Z(3).99.

      *SEL-1
       01  SEL1_PRELIM_IN              PIC 9(3)V99.
       01  SEL1_MIDTERMS_IN            PIC 9(3)V99.
       01  SEL1_FINALS_IN              PIC 9(3)V99.
       01  SEL1_COMPUTE_AVE            PIC 9(3)V99.
       01  SEL1_AVE_OUT                PIC Z99.99.

      *SEL-2
       01  SEL2_USER_INPUT             PIC S9(7).
       01  SEL2_INPUT_OUT              PIC Z(7).

      *SEL-3
       01  SEL3_USER_INPUT_IN          PIC 9(3).
       01  SEL3_USER_INPUT_OUT         PIC Z(3).

      *SEL-4
       01  SEL4_FIRST_INPUT            PIC 9(5).
       01  SEL4_FIRST_INPUT_OUT        PIC ZZ,ZZZ.
       01  SEL4_SEC_INPUT              PIC 9(5).
       01  SEL4_SEC_INPUT_OUT          PIC ZZ,ZZZ.

      *SEL-5
       01  SEL5_F_INPUT                PIC 9(5).
       01  SEL5_F_OUTPUT               PIC ZZ,ZZZ.
       01  SEL5_S_INPUT                PIC 9(5).
       01  SEL5_S_OUTPUT               PIC ZZ,ZZZ.
       01  SEL5_T_INPUT                PIC 9(5).
       01  SEL5_T_OUTPUT               PIC ZZ,ZZZ.

      *SEL-6
       01  SEL6_PRELIM_IN              PIC 9(3)V99.
       01  SEL6_MIDTERMS_IN            PIC 9(3)V99.
       01  SEL6_FINALS_IN              PIC 9(3)V99.
       01  SEL6_CALC_AVE               PIC 9(3)V99.
       01  SEL6_AVE_OUT                PIC Z(3).99.

      *SEL-7
       01  SEL7_USER_TEMP_IN           PIC S9(5)V99.

      *SEL-8
       01  SEL8_SM_NUM                 PIC 9(12).
       01  SEL8_SM_NAME                PIC X(25).
       01  SEL8_UNIT_SOLD              PIC 9(7)V99.
       01  SEL8_UNIT_PRICE             PIC 9(7)V99.
       01  SEL8_SOLVE_SALES            PIC 9(7)V99.
       01  SEL8_SALES_OUT              PIC Z,ZZZ,ZZZ.99.
       01  SEL8_SOLVE_COMMISSION       PIC 9(7)V99.
       01  SEL8_COMMISSION_OUT         PIC Z,ZZZ,ZZZ.99.

      *SEL-9
       01  SEL9_USER_NUM               PIC 9(1).

      *SEL-10
       01  SEL10_USER_CHARAC           PIC X(1).

