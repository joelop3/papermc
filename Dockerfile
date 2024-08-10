FROM alpine

WORKDIR /mc

RUN apk add ca-certificates wget openjdk21-jdk

RUN wget -O paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21/builds/129/downloads/paper-1.21-129.jar
RUN echo eula=true>eula.txt

EXPOSE 25565

CMD ["java", "-Xms4G", "-Xmx4G", "-jar", "paper.jar", "--nogui"]

