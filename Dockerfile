FROM lscr.io/linuxserver/wireshark:latest

WORKDIR /app

# Install Edgewire Plugin to see traffic with wireshark
# https://github.com/siemens/cshargextcap?tab=readme-ov-file#installation
RUN wget https://github.com/siemens/cshargextcap/releases/download/v0.10.7/cshargextcap_0.10.7_linux_amd64.apk \
    && apk add --no-cache --allow-untrusted cshargextcap_0.10.7_linux_amd64.apk \
    && rm cshargextcap_0.10.7_linux_amd64.apk