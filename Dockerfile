FROM selenium/standalone-firefox:latest

RUN sudo apt-get -y update && sudo apt-get install -y libc6-dev
