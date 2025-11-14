      *ITE-1
       01  ITE1_COUNTER                PIC 9 VALUE 5.

      *ITE-2
       01  ITE2_COUNTER                PIC 9(1).

      *ITE-3
       01  ITE3_USER_INPUT_IN          PIC 9(4).
       01  ITE3_USER_INTPUT_OUT        PIC Z,ZZZ.
       01  ITE3_COUNTER                PIC 9(4).

      *ITE-4
       01  ITE4_USER_INPUT_N           PIC 9(3).
       01  ITE4_USER_INPUT_M           PIC 9(3).
       01  ITE4_COUNTER                PIC 9(3).
       01  ITE4_STORE_OUTPUT           PIC Z(3).

      *ITE-5
       01  ITE5_USER_INPUT_N           PIC 9(3).
       01  ITE5_USER_INPUT_M           PIC 9(3).
       01  ITE5_STORE_SUM              PIC 9(3).
       01  ITE5_COUNTER                PIC 9(3).
       01  ITE5_SUM_OUT                PIC Z(3).

      *ITE-6
       01  ITE6_USER_INPUT             PIC 9(2).
       01  ITE6_COUNTER                PIC 9(2).
       01  ITE6_CALC_FACTORIAL         PIC 9(19).
       01  ITE6_STORE_FAC              PIC Z,ZZZ,ZZZ,ZZZ,ZZZ,ZZZ,ZZZ.

      *ITE-7
       01  ITE7_USER_INPUT             PIC 9(10).
       01  ITE7_STORE_SUM              PIC Z(3).
       01  ITE7_CALC_SUM               PIC 9(10).

      *ITE-8
       01  ITE8_FIRST_TERM             PIC 9(3) VALUE 0.
       01  ITE8_SECOND_TERM            PIC 9(3) VALUE 1.
       01  ITE8_NEXT_TERM              PIC 9(3).
       01  ITE8_NT_OUT                 PIC ZZ9.
       01  ITE8_USER_COUNTER           PIC 9(2).

      *ITE-9
       01  ITE9_USER_COUNTER           PIC 9(3).
       01  ITE9_USER_COUNTER_OUT       PIC ZZ9.
       01  ITE9_P_N                    PIC 9(1).
       01  ITE9_LOOP_COUNT             PIC 9(3).

      *ITE-10
       01  ITE10_USER_INPUT            PIC 9(6).
       01  ITE10_USERINT_OUT           PIC ZZZ,ZZ9.
       01  ITE10_PLACE_VALUE           PIC 9(20) value 1.
       01  ITE10_UI_REMAINDER          PIC 9(2).
       01  ITE10_CALC_INPUT            PIC 9(20) value 0.
       01  ITE10_STORE_BINARY          PIC Z(20).

