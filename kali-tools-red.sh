#!/bin/bash

echo "🔧 Adding Microsoft repository for Visual Studio Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm microsoft.gpg

echo "🔄 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing Kali Red Team metapackages..."
sudo apt install -y \
  kali-tools-top10 \
  kali-tools-information-gathering \
  kali-tools-vulnerability \
  kali-tools-web \
  kali-tools-wireless \
  kali-tools-passwords \
  kali-tools-exploitation \
  kali-tools-reverse-engineering \
  kali-tools-social-engineering \
  kali-tools-forensics

echo "📦 Installing specific offensive tools..."
sudo apt install -y \
  metasploit-framework \
  burpsuite \
  aircrack-ng \
  john \
  hashcat \
  hydra \
  ghidra \
  nikto \
  volatility \
  wafw00f \
  seclists \
  code \
  unzip \
  python3-pip

echo "🐍 Installing Scrapy (required for ReconSpider)..."
pip3 install scrapy

echo "Download a script that builds a directory structure for a pentest project."
wget https://github.com/Stormshadowshellfire/PentestStruct/blob/main/Penstruct.sh -O ~/Penstruct.sh

echo "📁 Cloning useful GitHub repositories..."
mkdir -p ~/redteam-tools && cd ~/redteam-tools

git clone https://github.com/danielmiessler/SecLists
git clone https://github.com/thewhiteh4t/FinalRecon
git clone https://github.com/lanmaster53/recon-ng
git clone https://github.com/laramies/theHarvester
git clone https://github.com/smicallef/spiderfoot
git clone https://github.com/CiscoCXSecurity/rdp-sec-check

echo "📥 Downloading standalone scripts..."
mkdir -p ./Livenum
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh -O ./Livenum/LinEnum.sh
chmod +x ./Livenum/LinEnum.sh

mkdir -p ./Stealth
wget https://raw.githubusercontent.com/JoelGMSec/Invoke-Stealth/main/Invoke-Stealth.ps1 -O ./Stealth/Invoke-Stealth.ps1

echo "📦 Downloading ReconSpider (without execution)..."
wget -O ReconSpider.zip https://academy.hackthebox.com/storage/modules/144/ReconSpider.v1.2.zip
unzip ReconSpider.zip -d ReconSpider

echo "✅ Setup complete! All tools are ready in ~/redteam-tools"
