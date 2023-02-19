
#!/bin/bash

#How to install and configure SonarQube on CentOS 7
#Follow below steps successively to install sonarqube on your centOS server.
#This process need to be run as a regular user ( Sonarqube doesnt work when you start it as root user).


su - vagrant
#Step 1: Java 11 installation
#The only prerequisite for running SonarQube is to have Java (Oracle JRE 11 or OpenJDK 11) installed on your machine. To install OpenJDK 11, run the following commands


sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

#Step 2: Download SonarQube latest versions on your server
#Let’s navigate to the /opt directory before downloading


cd /opt
#If wget is not installed on your system, run the command to install it. Then download SonarQube package:


sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
#Step 3: Extract packages
#If unzip is not installed on your system, run the command

