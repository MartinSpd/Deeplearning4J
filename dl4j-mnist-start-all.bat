
@echo off

REM Get the directory of the script
set "ROOT_DIRECTORY=%~dp0"

REM Navigate to the directory of dl4j-mnist-classification
cd /d "%ROOT_DIRECTORY%\dl4j-mnist-classification"

REM Start the Java application using Maven
start mvn spring-boot:run &&

REM Navigate to the directory of dl4j-mnist-recognition
cd /d "%ROOT_DIRECTORY%\..\dl4j-mnist-recognition"

REM Start the Java application using Maven
start mvn spring-boot:run &&

REM Navigate to the directory of dl4j-mnist-digits
cd /d "%ROOT_DIRECTORY%\..\dl4j-mnist-digits"

REM Start the React.js application using npm
npm start --open
