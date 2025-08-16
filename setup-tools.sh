#!/bin/bash
# Custom Kali Linux Setup Script
# Focus: SOC Analyst + Bug Bounty + Pentesting
# Author: EDGARDEVEN

set -e

echo "[+] Updating system..."
sudo apt update && sudo apt full-upgrade -y

echo "[+] Installing essential utilities..."
sudo apt install -y git curl wget unzip python3-pip python3-venv \
  python3-virtualenv pipx tmux htop jq zsh golang

echo "[+] Installing network & recon tools..."
sudo apt install -y nmap masscan amass dnsrecon whois

echo "[+] Installing exploitation & testing tools..."
sudo apt install -y metasploit-framework sqlmap nikto hydra

echo "[+] Installing web pentesting tools..."
sudo apt install -y gobuster wfuzz dirb burpsuite

echo "[+] Installing OSINT tools..."
sudo apt install -y theharvester recon-ng

echo "[+] Installing password attack tools..."
sudo apt install -y hashcat john crunch cewl

echo "[+] Installing wireless tools..."
sudo apt install -y aircrack-ng bettercap reaver

echo "[+] Installing forensics & malware analysis tools..."
sudo apt install -y autopsy volatility radare2

echo "[+] Installing reverse engineering tools..."
sudo apt install -y ghidra

echo "[+] Installing bug bounty extras..."
mkdir -p ~/tools

# Sublist3r via pipx
pipx install git+https://github.com/aboul3la/Sublist3r.git

# httprobe & gau via Go
go install github.com/tomnomnom/httprobe@latest
go install github.com/lc/gau/v2/cmd/gau@latest

# Add Go binaries to PATH
if ! grep -q "go/bin" ~/.zshrc; then
  echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.zshrc
fi

echo "[+] Setup complete!"
echo "Restart your terminal or run 'source ~/.zshrc' to enable Go tools."
echo "You can now start using your Kali Linux setup for SOC analysis, bug bounty hunting, and pentesting tasks. By EDGARDEVEN."
