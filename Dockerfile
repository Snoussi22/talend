# Use the Apache Airflow base image
#FROM apache/airflow:2.0.1

# Switch to the root user to perform installation tasks
#USER root

# Define the path to the extracted JDK folder
#ENV JAVA_HOME=/usr/java/default

# Copy the JDK folder into the container's /usr/java/ directory
#COPY jdk-18 /usr/java/default

# Set the PATH environment variable to include the Java binaries
#ENV PATH=$PATH:$JAVA_HOME/bin

# Switch back to the airflow user
#USER airflow

 #Use the Apache Airflow base image for Windows
FROM apache/airflow:2.0.1

# Switch to the Administrator user to perform installation tasks
USER Administrator

# Define the path to the extracted JDK folder
ENV JAVA_HOME=C:\Java\jdk-18.0.1

# Copy the JDK folder into the container's C:\java\ directory
COPY jdk-18 C:\Java\jdk-18.0.1

# Set the PATH environment variable to include the Java binaries
ENV PATH=$PATH;%JAVA_HOME%\bin

# Switch back to the airflow user
USER airflow
