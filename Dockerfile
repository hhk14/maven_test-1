FROM tomcat:9.0.80-jdk8-corretto-al2
LABEL MAINTAINER=HHK EMAIL=harishahk14@gmail.com
RUN mv webapps.dist/ webapps
RUN adduser tomcat --shell /bin/false
COPY webapp/target/*.war webapps/
USER tomcat
