FROM maven:3.3-jdk-8

RUN apt-get -y update && apt-get -y install xvfb

# Install Google Chrome:
RUN apt-get -y install libxpm4 libxrender1 libgtk2.0-0 libnss3 libgconf-2-4
RUN apt-get -y install chromium

# Dependencies to make "headless" chrome/selenium work:
RUN apt-get -y install xvfb gtk2-engines-pixbuf
RUN apt-get -y install xfonts-cyrillic xfonts-100dpi xfonts-75dpi xfonts-base xfonts-scalable

# Optional but nifty: For capturing screenshots of Xvfb display:
RUN apt-get -y install imagemagick x11-apps
