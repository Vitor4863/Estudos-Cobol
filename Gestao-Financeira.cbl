      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SISTEMA-GESTAO-FINANCEIRA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 VALOR-ATUAL PIC 9(6)V99 VALUE 0.
       01 VALOR-ANTERIOR PIC 9(6)V99 VALUE 0.
       01 RECEITA PIC 9(6)V99 VALUE 0.
       01 DESPESA PIC 9(6)V99 VALUE 0.
       01 SALDO PIC 9(6)V99 VALUE 0.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "VALOR-ATUAL:"
            ACCEPT VALOR-ATUAL
            DISPLAY "VALOR-ANTERIOR:"
            ACCEPT VALOR-ANTERIOR
             COMPUTE RECEITA = VALOR-ATUAL - VALOR-ANTERIOR
            DISPLAY "RECEITA: "RECEITA
            DISPLAY "DESPESA"
            ACCEPT DESPESA

            COMPUTE SALDO = VALOR-ATUAL - DESPESA
            DISPLAY "SALDO:" SALDO
            STOP RUN.


       END PROGRAM SISTEMA-GESTAO-FINANCEIRA.
