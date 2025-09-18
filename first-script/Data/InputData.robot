*** Variables ***
#Configuration

${BROWSER} =    chrome
${ENVIRONMENT} =    dev
&{BASE_URL}     dev=https://google.com/      prod=https://gmail.com/
#${INVALID_CREDENTIALS_PATH_CSV}    "D:\\Ninja\\RobotProjects\\PythonProject\\first-script\\Data\\Users.csv"
${INVALID_CREDENTIALS_PATH_CSV}    ${CURDIR}/Users.csv



