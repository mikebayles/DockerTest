FROM selenium/standalone-firefox:latest

RUN sudo apt-get -y update && sudo apt-get install -y build-essential
