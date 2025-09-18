*** Variables ***
@{FRIUTS} =     Mango   PEAR    APRICOT

*** Test Cases ***
Loop Over Numbers
    #Print 1 2 3 4
    FOR    ${num}    IN RANGE    1    5
        Log    Number is ${num}
    END

Loop Over List
    @{items}    Create List    Apple    Banana    Mango
    FOR    ${item}    IN    @{items}
        Log    Item: ${item}
    END

Loop Over List Variables
    FOR    ${item}    IN    @{FRIUTS}
        Log    Item: ${item}
    END