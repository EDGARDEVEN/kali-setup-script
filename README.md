# Kali Linux Custom Setup Script

This repository contains a **custom setup script** for Kali Linux, tailored for **SOC analysts, bug bounty hunters, and penetration testers**.  
It installs a curated set of essential tools without bloating your Kali environment.

---

## Features
The script installs and configures:

### Essentials
- git, curl, wget, unzip, tmux, htop, jq, zsh
- Python3 (pip, venv, virtualenv, pipx)
- Go (for installing bug bounty tools)

###  Networking & Recon
- nmap, masscan, amass, dnsrecon, whois

### Exploitation
- metasploit-framework, sqlmap, hydra, nikto

### Web Pentesting
- gobuster, wfuzz, dirb, burpsuite (community)

### OSINT
- theHarvester, recon-ng, Sublist3r (via pipx)

### Password Attacks
- hashcat, john, crunch, cewl

### Wireless
- aircrack-ng, bettercap, reaver

### Forensics & Reverse Engineering
- autopsy, volatility, radare2, ghidra

### Bug Bounty Extras
- [Sublist3r](https://github.com/aboul3la/Sublist3r) (via pipx)
- [httprobe](https://github.com/tomnomnom/httprobe) (via Go)
- [gau](https://github.com/lc/gau) (via Go)

---

## Installation

Clone this repo and run the script:

```bash
git clone https://github.com/EDGARDEVEN/kali-setup-script.git
cd kali-setup-script
chmod +x setup-tools.sh
./setup-tools.sh
```

---

## Post-Install Notes
- Restart your terminal or run:
  ```bash
  source ~/.zshrc
  ```
  to enable Go-based tools (`httprobe`, `gau`).

- Switch to **zsh** for a better shell:
  ```bash
  chsh -s /bin/zsh
  ```

---

## Author
- **EDGARDEVEN**  
Just a Tech !!!

---
