
#!/bin/bash

# Get the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# DL4J-MNIST-CLASSIFICATION
# Navigate to the directory of dl4j-mnist-classification
cd "$DIR/../dl4j-mnist-classification"

# Start the Java application using Maven
mvn spring-boot:run &

# DL4J-MNIST-RECOGNITION
# Navigate to the directory of dl4j-mnist-recognition
cd "$DIR/../dl4j-mnist-recognition"

# Start the Java application using Maven
mvn spring-boot:run &

# DL4J-MNIST-DIGITS
# Navigate to the directory of dl4j-mnist-digits
cd "$DIR/../dl4j-mnist-digits"

# Start the React.js application using npm
npm start --open
