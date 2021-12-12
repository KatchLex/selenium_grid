:: Beginning of hub batch file
set SERVER_VERSION=4.1.0
set TASK_NAME=SeleniumServerNode3
set REGISTER_IP=localhost:4444
set CHROME_DRIVER=.\webdriver\chromedriver.exe
set GECKO_DRIVER=.\webdriver\geckodriver.exe
set OPERA_DRIVER=.\webdriver\operadriver.exe
set NODE_CONFIG=se-node_3-config.json

java -Dwebdriver.operadriver=%OPERA_DRIVER% -Dwebdriver.gecko.driver=%GECKO_DRIVER% -Dwebdriver.chrome.driver=%CHROME_DRIVER% -jar selenium-server-standalone-%SERVER_VERSION%.jar -role node -hub http://%REGISTER_IP%/grid/register -nodeConfig %NODE_CONFIG%
:: End of hub batch file
pause