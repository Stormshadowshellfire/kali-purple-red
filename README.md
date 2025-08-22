🧨 Kali Purple Red Team Setup Script

Overview
This script transforms a Kali Purple system into a powerful Red Team environment by installing offensive security tools, cloning essential GitHub repositories, and preparing resources for reconnaissance, exploitation, and enumeration.
It also adds the official Microsoft repository to install and maintain Visual Studio Code via apt.

🔧 What It Installs
✅ Kali Metapackages

kali-tools-top10
kali-tools-information-gathering
kali-tools-vulnerability
kali-tools-web
kali-tools-wireless
kali-tools-passwords
kali-tools-exploitation
kali-tools-reverse-engineering
kali-tools-social-engineering
kali-tools-forensics

✅ Offensive Tools

Metasploit Framework
Burp Suite
Aircrack-ng
John the Ripper
Hashcat
Hydra
Ghidra
Nikto
Volatility
Wafw00f
SecLists
Visual Studio Code

✅ GitHub Repositories

SecLists
FinalRecon
Recon-ng
theHarvester
SpiderFoot
rdp-sec-check

✅ Standalone Scripts

LinEnum
Invoke-Stealth.ps1

✅ ReconSpider

Downloads ReconSpider v1.2 from HackTheBox Academy
Installs Python dependency scrapy
Extracts the tool but does not execute it automatically

📦 Usage

bash
chmod +x setup-redteam.sh
./setup-redteam.sh
After installation, you can manually run ReconSpider like this:

bash
cd ~/redteam-tools/ReconSpider
python3 ReconSpider.py http://target-domain.com

📁 All tools are organized under:
bash
~/redteam-tools/

💡 Notes
This script is designed for Kali Purple, but it can be adapted for standard Kali Linux.

Visual Studio Code is installed via the official Microsoft repository for automatic updates.

No tools are executed during installation — everything is staged and ready for manual use.