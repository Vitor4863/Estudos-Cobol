        IDENTIFICATION DIVISION.
          PROGRAM-ID. CALCULADORA.

          DATA DIVISION.
          WORKING-STORAGE SECTION.
           01 NUMERO-1 PIC 9(3).
           01 NUMERO-2 PIC 9(3).
           01 RESULTADO PIC 9(4).
           01 OPERACAO PIC X(1).

               PROCEDURE DIVISION.
             INICIO.
               DISPLAY "Bem-vindo(a) à calculadora em COBOL!".
              DISPLAY "Digite o primeiro numero:".
              ACCEPT NUMERO-1.
              DISPLAY "Digite o segundo numero:".
                ACCEPT NUMERO-2.
              DISPLAY "Escolha a operacao: + - * /".
              ACCEPT OPERACAO.
              IF OPERACAO = "+" THEN
             COMPUTE RESULTADO = NUMERO-1 + NUMERO-2
             DISPLAY "O resultado e: ", RESULTADO
                   ELSE IF OPERACAO = "-" THEN
                 COMPUTE RESULTADO = NUMERO-1 - NUMERO-2
                    DISPLAY "O resultado e: ", RESULTADO
              ELSE IF OPERACAO = "*" THEN
                 COMPUTE RESULTADO = NUMERO-1 * NUMERO-2
                  DISPLAY "O resultado e: ", RESULTADO
                ELSE IF OPERACAO = "/" THEN
                  IF NUMERO-2 = 0 THEN
        DISPLAY "Não é possível dividir por zero!"
             ELSE
              COMPUTE RESULTADO = NUMERO-1 / NUMERO-2
             DISPLAY "O resultado e: ", RESULTADO
                 END-IF
            ELSE
            DISPLAY "Operação inválida!"
           END-IF

              STOP RUN.
