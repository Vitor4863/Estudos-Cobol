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
       01 Employee-Record.
         05 Employee-Id PIC 9(5).
          05 Employee-Name PIC X(20).
       05 Employee-Department PIC X(15).
        05 Employee-Salary PIC 9(6).
        01 Option-Choice PIC X.
       PROCEDURE DIVISION.

         Main-Menu.
         DISPLAY "=== SISTEMA DE CPD ===".
         DISPLAY "1. Adicionar Registro".
           DISPLAY "2. Consultar Registro".
        DISPLAY "3. Sair".
           DISPLAY "Escolha uma opção (1-3): ".
         ACCEPT Option-Choice.

          IF Option-Choice = "1" THEN

         ELSE IF Option-Choice = "2" THEN
         PERFORM Display-Record
        ELSE IF Option-Choice = "3" THEN
        STOP RUN
         ELSE
        DISPLAY "Opção inválida. Tente novamente."
           PERFORM Main-Menu.


             DISPLAY "=== ADICIONAR REGISTRO ===".
          DISPLAY "ID do funcionário: ".
        ACCEPT Employee-Id.
         DISPLAY "Nome do funcionário: ".
           ACCEPT Employee-Name.
            DISPLAY "Departamento do funcionário: ".
          ACCEPT Employee-Department.
            DISPLAY "Salário do funcionário: ".
             ACCEPT Employee-Salary.


                   DISPLAY "Registro adicionado com sucesso.".
                      PERFORM Main-Menu.

                 Display-Record.
                DISPLAY "=== CONSULTAR REGISTRO ===".
                 DISPLAY "ID do funcionário: ".
                ACCEPT Employee-Id.


               DISPLAY "Nome do funcionário: " Employee-Name.
          DISPLAY "Departamento do funcionário: " Employee-Department.
          DISPLAY "Salário do funcionário: " Employee-Salary.
              PERFORM Main-Menu.
        MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
