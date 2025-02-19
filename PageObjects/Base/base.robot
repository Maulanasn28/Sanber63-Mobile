*** Settings ***
Library        AppiumLibrary

*** Variables ***
# Env Rila
# ${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
# ${PLATFORM_NAME}         Android
# ${PLATFORM_VERSION}      11.0
# ${DEVICE_NAME}           emulator-5554
# ${APP_PACKAGE}           com.example.myapplication
# ${APP_ACTIVITY}          com.example.myapplication.MainActivity

# Env Alzira
#${REMOTE_URL}              http://localhost:4723/wd/hub 
#${PLATFORM_NAME}           Android
#${PLATFORM_VERSION}        15.0
#${DEVICE_NAME}             emulator-5554
#${APP_PACKAGE}             com.example.myapplication
#${APP_ACTIVITY}            com.example.myapplication.MainActivity

# Env Rasikha
# ${REMOTE_URL}              http://127.0.0.1:4723/wd/hub
# ${PLATFORM_NAME}           Android
# ${PLATFORM_VERSION}        9.0
# ${DEVICE_NAME}             emulator-5554
# ${APP_PACKAGE}             com.example.myapplication
# ${APP_ACTIVITY}            com.example.myapplication.MainActivity


# Env Sonya
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      12.0
${DEVICE_NAME}           emulator-5554
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity


*** Keywords ***
Open Flight Application
    Open Application         remote_url=${REMOTE_URL}
    ...                      platformName=${PLATFORM_NAME}
    ...                      platformVersion=${PLATFORM_VERSION}  
    ...                      platformName=${PLATFORM_NAME}
    ...                      platformVersion=${PLATFORM_VERSION}  
    ...                      deviceName=${DEVICE_NAME}
    ...                      appPackage=${APP_PACKAGE}
    ...                      appActivity=${APP_ACTIVITY}

Close Flight Application
    Close Application 