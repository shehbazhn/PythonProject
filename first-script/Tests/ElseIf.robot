*** Variables ***
${MY_VALUE} =    100


*** Test Cases ***
Testing a true IF statement
     IF    ${MY_VALUE} > 50
        Keyword 1
    END

Testing a false IF statement
   IF    ${MY_VALUE} > 200
        Keyword 1
    END

Testing an IF/ELSE statement
   IF    ${MY_VALUE} > 200
        Keyword 1
   ELSE
        Keyword 2
    END



*** Keywords ***
Keyword 1
    log    In Keyword 1

Keyword 2
    log    In Keyword 2

Keyword 3
    log    In Keyword 3