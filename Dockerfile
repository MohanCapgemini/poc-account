FROM java:8
COPY poc-account-environment.properties /usr/src/poc-account-environment.properties
COPY microservice-demo-accounts-0.0.1-SNAPSHOT.jar /usr/src/microservice-demo-accounts-0.0.1-SNAPSHOT.jar
WORKDIR /usr/src
CMD java -jar -Dconfig.home="/usr/src" microservice-demo-accounts-0.0.1-SNAPSHOT.jar