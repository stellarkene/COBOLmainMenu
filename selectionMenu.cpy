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