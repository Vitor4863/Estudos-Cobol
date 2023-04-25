      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 PESO  PIC 9(3)V9(1) VALUE 0.
       01 ALTURA PIC 9(3)V9(2) VALUE 0.
       01 IMC PIC 9(3)V9(2) VALUE 0.
       01 CLASSIFICACAO PIC X(15) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "PESO (KG):"
            ACCEPT PESO
            DISPLAY "ALTURA (M):"

            COMPUTE IMC = PESO /  (ALTURA ** 2)

            IF IMC < 18.5
                DISPLAY "IMC:" IMC
                DISPLAY "CLASSIFICACAO: BAIXO PESO "
                ELSE IF IMC < 24.9
                    DISPLAY "IMC: " IMC
                    DISPLAY "CLASSIFICACAO: NORMAL"
                    ELSE IF IMC <29.9
                        DISPLAY "IMC:"IMC
                        DISPLAY "CLASSIFICACAO: OBESIDADE GRAU 1"
                        ELSE IF IMC <39.9
                            DISPLAY "IMC:" IMC
                            DISPLAY "CLASSIFICACAO: OBSIDADE GRAU 2"
                            ELSE
                                DISPLAY "IMC " IMC
                             DISPLAY "CLASSIFICACAO: OBESIDADE GRAU 3"
                             END-IF

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
