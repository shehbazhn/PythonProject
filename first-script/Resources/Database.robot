*** Settings ***
Library    MongoDBLibrary

*** Variables ***
${CONNECTION_STRING}        mongodb+srv://hardware_atm_user:SmartWiresATM103@ps19atmmongocuster.ltkgk.mongodb.net/track-it?retryWrites=true&w=majority&maxPoolSize=50&wtimeoutMS=2500
${MONGO_DB}          test
${MONGO_COLLECTION}  customers

*** Keywords ***
Connect MongoDB
    connect to mongodb    ${CONNECTION_STRING}

Disconnect MongoDB
    disconnect from mongodb

Insert Customer Record
    Connect To Mongodb    ${CONNECTION_STRING}    ${MONGO_DB}
    ${document}=    Create Dictionary    name=Shehbaz Hussain    city=Lahore    role=Software Engineer
    save mongodb records    ${MONGO_COLLECTION}    ${document}
    Disconnect From Mongodb

Find Customer Record
    Connect MongoDB
    ${query}=    Evaluate    json.dumps({"name": "Shehbaz Hussain"})    json
    ${fields}=   Evaluate    json.dumps({})    json
    ${result}=   Retrieve Mongodb Records With Desired Fields    ${MONGO_DB}    ${MONGO_COLLECTION}    ${query}    ${fields}
    Log To Console    Found Record: ${result}
    Disconnect MongoDB
