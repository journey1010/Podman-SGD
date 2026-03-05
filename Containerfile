FROM docker.io/library/eclipse-temurin:8-jdk-jammy as base 

ARG TIMEZONE=${TIMEZONE}
ARG PAYARA_DIR=${PAYARA_DIR}

RUN apt-get update && \
    apt-get install -y unzip && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /glassfish/tmp /glassfish/tmppcm /opt 

COPY payara/payara-5.2022.5.zip /opt/payara5.zip
RUN unzip /opt/payara5.zip -d /opt/payara5 && \
    rm /opt/payara5.zip

EXPOSE 8080 8181 4848

CMD ["opt/payara5/bin/asadmin", "start-domain", "--verbose", "domain1"]
