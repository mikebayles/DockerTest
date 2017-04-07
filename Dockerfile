FROM selenium/standalone-firefox:latest

RUN sudo apt-get update && sudo apt-get install libc6-dev
