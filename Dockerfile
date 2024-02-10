FROM openjdk:23-slim

ENV STAGE=stage
ENV DB_HOST=
ENV DB_PORT=
ENV DB_USER=
ENV DB_PASSWORD=

ENV AWS_ACCESS_KEY_ID=
ENV AWS_SECRET_ACCESS_KEY=
ENV S3_BUCKET_NAME=my-moyur-image
ENV AWS_REGION=ap-northeast-2

WORKDIR /app

COPY /kaniko/buildcontext/target/moyur-project-0.0.1-SNAPSHOT.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]

EXPOSE 8080
