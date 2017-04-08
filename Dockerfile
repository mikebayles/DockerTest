FROM ubuntu:16.04

RUN sudo apt-get -y update && sudo apt-get install -y build-essential libxss1 libappindicator1 libindicator7
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN sudo apt-get update
RUN sudo apt-get install -y google-chrome-stable xvfb unzip python pip
RUN sudo pip install pyvirtualdisplay selenium
RUN wget -N https://chromedriver.storage.googleapis.com/2.29/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN chmod +x chromedriver
RUN sudo mv -f chromedriver /usr/local/share/chromedriver
RUN sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
RUN sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
