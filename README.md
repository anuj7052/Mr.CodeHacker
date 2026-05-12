<p align="center">
  <img src="Icon/Banner.png" width="800px">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Termux-brightgreen?style=for-the-badge">
  <img src="https://img.shields.io/badge/Python-3.x-blue?style=for-the-badge&logo=python">
  <img src="https://img.shields.io/badge/License-GPL%20v3-orange?style=for-the-badge">
  <img src="https://img.shields.io/badge/Version-T.G.D--1.0.4-red?style=for-the-badge">
  <img src="https://img.shields.io/badge/OSINT-Framework-cyan?style=for-the-badge">
</p>

---

## What is Mr.CodeHacker?

**Mr.CodeHacker** is a complete **OSINT (Open Source Intelligence)** framework that lets you gather publicly available information about:

- Social media **usernames** (150+ platforms)
- **Phone numbers** (carrier, location, social links)
- **Domains / IP addresses** (DNS, WHOIS, headers, traceroute)
- **Email addresses** (social media linkage, breach checks)
- **People** by name (public records, social presence)

It includes a full **GUI (web-based)**, **interactive maps**, **graph visualization**, **PDF export**, **Google/Yandex Dorks**, **port scanner**, **QR code file transfer**, and **encoding/decoding** — all from a single CLI.

> **DISCLAIMER:** This tool is for **educational and research purposes only**. Do not use it on targets without explicit authorization. The author takes no responsibility for misuse.

---

## Features

| # | Module | Description |
|---|--------|-------------|
| 1 | **Social Account OSINT** | Search a username across 150+ social platforms |
| 2 | **Phone Number OSINT** | Carrier, country, region, social account links |
| 3 | **Domain / IP OSINT** | WHOIS, DNS, HTTP headers, traceroute, open ports |
| 4 | **Configuration** | Change settings, language, API keys |
| 5 | **Database (GUI)** | Web-based GUI with dark/light mode, maps, graphs |
| 6 | **Update** | Self-updater |
| 7 | **Port Scanner** | TCP port scan on any host |
| 8 | **Email Lookup** | Check email linkage across social networks |
| 9 | **Dorks Generator** | Google & Yandex dorks with date filters |
| 10 | **People OSINT** | Search public info about a person by name |
| 11 | **Encode / Decode** | Encode or decode your generated reports |
| 12 | **PDF Converter** | Export graphs/reports to PDF (Light/Dark/High-Contrast) |
| 13 | **File Transfer** | Send reports to your phone via QR code |
| 14 | **Session Options** | Switch proxy/useragent without restart |
| 15 | **Exit** | — |

---

## Requirements

### System packages
| Package | Purpose |
|---------|---------|
| `python3` | Runtime |
| `pip` | Python package manager |
| `php` | Web GUI |
| `whois` | Domain lookups |
| `traceroute` | Network tracing |
| `wkhtmltopdf` | PDF export |

### Python libraries (auto-installed)
```
PyQRCode        — QR code file transfer
phonenumbers    — Phone number parsing
requests        — HTTP requests
pdfkit          — PDF export
beautifulsoup4  — HTML scraping
stem            — Tor proxy support
```

---

## Quick Start (One Command)

### macOS / Linux
```bash
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
bash run.sh
```

### Termux (Android)
```bash
pkg install git
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
bash run.sh
```

### Windows
```cmd
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
run.bat
```

> `run.sh` / `run.bat` automatically: installs dependencies, creates a virtual environment, generates config, and launches the tool.

---

## Manual Installation

### macOS
```bash
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
bash install_mac.sh
source .venv/bin/activate
python3 MrCodeHacker.py
```

### Linux (Debian / Ubuntu / Fedora / Arch)
```bash
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
sudo bash install.sh
python3 MrCodeHacker.py
```

### Linux (Virtual Environment — recommended on newer distros)
```bash
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python3 MrCodeHacker.py
```

### Termux (Android)
```bash
pkg update && pkg upgrade
pkg install git python php whois traceroute
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
bash install_Termux.sh
python MrCodeHacker.py
```

### Windows 10 / 11
```cmd
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
Install.cmd
```
> Run `Install.cmd` as **Administrator**. Requires `winget` (App Installer from Microsoft Store).

---

## Running the Tool

| Platform | Command |
|----------|---------|
| macOS (venv) | `source .venv/bin/activate && python3 MrCodeHacker.py` |
| Linux | `python3 MrCodeHacker.py` |
| Termux | `python MrCodeHacker.py` |
| Windows | `python MrCodeHacker.py` |
| Any (auto) | `bash run.sh` / `run.bat` |

---

## Configuration

Settings file:
```
Configuration/Configuration.ini
```

Default update password: **Holmes**

To edit manually:
```ini
[Smtp]
status = Disabled        ; Enable to get email alerts
email = None
password = None
destination = None
server = None
port = None

[Settings]
password = Holmes        ; Update password
api_key = None           ; WhoisXML API key (optional)
proxy_list = Proxies/Proxy_list.txt
useragent_list = Useragents/Useragent.txt
show_logs = False        ; Save session logs True/False
database = False         ; Enable GUI database True/False
language = english       ; english / italian / french
date_format = eu         ; eu (DD/MM/YYYY) / us (MM/DD/YYYY) / as (YYYY/MM/DD)
path = /path/to/tool
```

---

## GUI Setup

### Dark / Light / High-Contrast Mode
Edit `GUI/Theme/Mode.json`:
```json
{
    "Color": {
        "Background": "Dark"
    }
}
```
Options: `Light` · `Dark` · `High-Contrast`

### Login Credentials
**`GUI/Credentials/Login.json`:**
```json
{
    "Database": {
        "Status": "Active"
    }
}
```

**`GUI/Credentials/Users.json`:**
```json
{
    "Users": [
        {
            "Username": "Admin",
            "Password": "Qwerty123"
        }
    ]
}
```
> Default credentials: **Admin / Qwerty123** — change after first login.

### GUI Language
Edit `GUI/Language/Language.json`:
```json
{
    "Language": {
        "Preference": "English"
    }
}
```
Options: `English` · `Italian` · `French` · `Browser`

---

## CLI Languages

| Language | Code |
|----------|------|
| 🏴󠁧󠁢󠁥󠁮󠁧󠁿 English | `english` |
| 🇮🇹 Italiano | `italian` |
| 🇫🇷 Français | `french` |

---

## WhoisXML API Key (Optional)

Get a free key at: [https://whois.whoisxmlapi.com](https://whois.whoisxmlapi.com)

Add it in `Configuration/Configuration.ini`:
```ini
api_key = YOUR_KEY_HERE
```

---

## Proxy Support

The tool supports rotating proxies via the `Proxies/Proxy_list.txt` file.  
Format: one proxy per line — `ip:port`

Anonymous mode uses the **stem** library for Tor integration.

---

## Notes

- **DATABASE is not available on Termux** (requires PHP server)
- On macOS/modern Linux, always use a **virtual environment** to avoid PEP 668 conflicts
- On Windows, if `winget` is unavailable: install [Python](https://python.org) and [XAMPP](https://apachefriends.org) manually, then run `pip install -r requirements.txt`
- wkhtmltopdf is required for PDF export — install separately if auto-install fails

---

## Version

**T.G.D-1.0.4**

---

## Legal

This tool is provided for **educational and authorized security research purposes only**.  
By using this tool you agree that you are solely responsible for your actions.  
Unauthorized use against systems or individuals you do not have permission to test is **illegal**.

---

<p align="center">
  Made with ❤️ | <a href="https://github.com/anuj7052/Mr.CodeHacker">github.com/anuj7052/Mr.CodeHacker</a>
</p>
