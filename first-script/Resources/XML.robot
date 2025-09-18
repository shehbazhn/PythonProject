*** Settings ***
Library    XML

*** Variables ***
${XML_MENU_PATH} =  inputs/xml/menu.xml
${EXPECTED_MENU_COUNT} =    1
${EXPECTED_FOOD_COUNT} =    3

*** Keywords ***
Should be one menu in the file
    ${menu_count} =     get element count    ${XML_MENU_PATH}
    should be equal as numbers    ${menu_count}     ${EXPECTED_MENU_COUNT}

Verify Menu Name
    ${root} =   parse xml    ${XML_MENU_PATH}
    should be equal    ${root.tag}  breakfast_menu

Get Current Food Count
    ${root}=    Parse XML    ${XML_MENU_PATH}
    ${count}=    Get Element Count    ${root}    food
    [Return]    ${count}

Verify Food Count
    ${food_count} =     Get Current Food Count
    should be equal as numbers    ${food_count}     ${EXPECTED_FOOD_COUNT}

Verify First Food Name
    ${first_food_name} =    get element    ${XML_MENU_PATH}     food[1]/name
    should be equal as strings    ${first_food_name.text}   Pancakes

Verify First Food Price
    ${first_food_price} =    get element    ${XML_MENU_PATH}     food[1]/price
    should be equal as strings    ${first_food_price.text}   $5.99

Verify First Food Calories
    ${first_food_calories} =    get element    ${XML_MENU_PATH}     food[1]/calories
    should be equal as strings    ${first_food_calories.text}   350

Add New Food
    ${root} =   parse xml    ${XML_MENU_PATH}
    ${current_count}=    Get Current Food Count
    ${new_index}=    Evaluate    ${current_count} + 1
    add element    ${root}      <food></food>
    add element    ${root}      <name>Grilled Cheese Sandwich</name>    xpath=food[${new_index}]
    add element    ${root}      <price>$2.95</price>    xpath=food[${new_index}]
    add element    ${root}      <description>Yummy grilled burger</description>    xpath=food[${new_index}]
    add element    ${root}      <calories>300</calories>    xpath=food[${new_index}]
    save xml       ${root}      ${XML_MENU_PATH}

Verify New Food Exists
    ${count}=    Get Current Food Count
    ${root}=    Parse XML    ${XML_MENU_PATH}
    Element Should Exist    ${root}    food[${count}]

