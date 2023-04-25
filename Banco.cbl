      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SISTEMA-BANCO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NOME-CLIENTE PIC X(30).
       01 CONTA-CLIENTE PIC 9(5).
       01 SALDO-CLIENTE PIC 9(5).
       01 VALOR-TRANSAÇÃO  PIC 9(6)V99.
       01 OPCAO-MENU PIC X(1).
        01 SALDO-ATUAL PIC 9(6)V99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "SISTEMA BANCARIO"

            PERFORM UNTIL OPCAO-MENU = "3"

            DISPLAY "1 - CONSULTAR SALDO"
            DISPLAY "2 - REALIZAR TRANSACAO"
            DISPLAY "3 - SAIR"
            DISPLAY "----------------------"
            DISPLAY "OPCAO"
            ACCEPT OPCAO-MENU
            EVALUATE OPCAO-MENU
            WHEN "1"
            DISPLAY "NOME-CLIENTE:"
            ACCEPT NOME-CLIENTE
            DISPLAY "CONTA:"
            ACCEPT CONTA-CLIENTE
            DISPLAY "SALDO-ATUAL: R$ " SALDO-CLIENTE
            WHEN "2"
            DISPLAY "NOME DO CLIENTE :"
            ACCEPT NOME-CLIENTE
            DISPLAY "CONTA"
            ACCEPT CONTA-CLIENTE
            DISPLAY "SALDO-ATUAL : R$ " SALDO-CLIENTE
            DISPLAY "VALOR-TRANSACAO"
            COMPUTE SALDO-ATUAL = SALDO-CLIENTE + VALOR-TRANSAÇÃO
            DISPLAY "NOVO SALDO : R$ " SALDO-ATUAL
            MOVE SALDO-ATUAL TO SALDO-CLIENTE
            WHEN "3"
            DISPLAY "SAINDO..."
            WHEN OTHER
            DISPLAY "OPCAO INVALIDA"
            END-EVALUATE
            END-PERFORM
            STOP RUN.
       END PROGRAM SISTEMA-BANCO.
