FROM ubuntu:22.04


# Installing Chrome Headless
RUN apt update
RUN apt install -y libappindicator1 fonts-liberation curl wget git \
    fonts-liberation \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libatspi2.0-0 \
    libcups2 \
    libdbus-1-3 \
    libdrm2 \
    libgbm1 \
    # libgtk-3-0 \
    libgtk-4-1 \
    libnspr4 \
    libnss3 \
    libwayland-client0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxkbcommon0 \
    libxrandr2 \
    xdg-utils \
    libu2f-udev \
    libvulkan1
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb

# Installing NodeJs
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt install nodejs
RUN npm install -g yarn

# Installing Angular
RUN npm install -g @angular/cli@16.2.7

RUN ng config -g cli.packageManager yarn
