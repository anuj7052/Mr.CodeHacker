<p align="center">
  <img width="650px" height="100px" src="Icon/Banner.png">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Termux-blue">
  <img src="https://img.shields.io/badge/Python-3.x-green">
  <img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg">
  <img src="https://img.shields.io/badge/License-GPL%20v3-blue">
  <img src="https://img.shields.io/badge/Version-T.G.D--1.0.4-orange">
</p>

---

# :mag: Mr.CodeHacker

**Mr.CodeHacker is a complete information gathering tool (OSINT). It can gather information about domains, usernames, phone numbers, and email addresses using publicly available internet sources. It supports Google Dorks, proxy-based anonymous requests, WhoIS API lookups, interactive maps, graphs, PDF export, and file transfer via QR code.**

> **DISCLAIMER:** This tool is made for **educational and research purposes only**. Results may not be 100% accurate. The author does not take any responsibility for improper use.

---

## :camera: SCREENSHOTS

![Screenshot](Screenshot/Screenshot.png)

<p align="center">
  <img src="Screenshot/Termux.png" height="400px" width="300px">
</p>

---

## :package: REQUIREMENTS

- Python 3.x
- pip
- PHP (for GUI)
- whois
- traceroute / tracepath
- wkhtmltopdf (for PDF export)

Python libraries (auto-installed):
```
PyQRCode
phonenumbers
requests
pdfkit
beautifulsoup4
stem
```

---

## :heavy_check_mark: INSTALLATION — TERMUX (Android)

```bash
pkg update && pkg upgrade
pkg install python python-pip git
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
chmod +x install_Termux.sh
bash install_Termux.sh
```

> No `proot` or root required.

---

## :heavy_check_mark: INSTALLATION — macOS

```bash
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
chmod +x install_mac.sh
bash install_mac.sh
```

> Homebrew will be installed automatically if not found.

---

## :heavy_check_mark: INSTALLATION — LINUX (Debian / Ubuntu / Fedora / Arch)

```bash
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
chmod +x install.sh
sudo bash install.sh
```

> The installer auto-detects your package manager (`apt` / `dnf` / `yum` / `pacman`).

### Linux (Virtual Environment — if pip errors occur):

```bash
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
python3 -m venv .lib_venv
source .lib_venv/bin/activate
pip3 install -r requirements.txt
python3 MrCodeHacker.py
```

---

## :heavy_check_mark: INSTALLATION — WINDOWS (10 / 11)

**Option 1 — via Git:**
```cmd
git clone https://github.com/anuj7052/Mr.CodeHacker
cd Mr.CodeHacker
Install.cmd
```

**Option 2 — via ZIP download:**
```cmd
ren Mr.CodeHacker-master Mr.CodeHacker
cd Mr.CodeHacker
Install.cmd
```

> Run `Install.cmd` as **Administrator**. winget installs Python 3 and XAMPP (PHP) automatically.  
> If winget is not available, install **App Installer** from the Microsoft Store.

---

## :arrow_forward: USAGE

### Linux / macOS:
```bash
cd Mr.CodeHacker
python3 MrCodeHacker.py
```
Or via launcher:
```bash
cd Launchers
bash Launcher.sh
```

### Linux / macOS (Virtual Environment):
```bash
cd Mr.CodeHacker
source .lib_venv/bin/activate
python3 MrCodeHacker.py
```

### Termux:
```bash
cd Mr.CodeHacker
python MrCodeHacker.py
```

### Windows:
```cmd
python MrCodeHacker.py
```
Or run `Launchers\Win_Launcher.exe`

---

## :gear: CONFIGURATION

Settings file location:
```
Configuration/Configuration.ini
```

Default update password: `Holmes`  
Default GUI credentials — Username: `Admin` / Password: `Qwerty123`

---

## :earth_americas: GUI — DARK / LIGHT MODE

Edit `GUI/Theme/Mode.json`:
```json
{
    "Color": {
        "Background": "Light"
    }
}
```
Available values: `Light`, `Dark`, `High-Contrast`

---

## :closed_lock_with_key: GUI — LOGIN / CREDENTIALS

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
            "Username": "Your Username",
            "Password": "Your Password"
        }
    ]
}
```

---

## :globe_with_meridians: GUI — LANGUAGE SETTINGS

Edit `GUI/Language/Language.json`:
```json
{
    "Language": {
        "Preference": "English"
    }
}
```
Available values: `English`, `Italian`, `French`, `Browser`

---

## :speech_balloon: CLI LANGUAGES

| Language | Flag |
|----------|------|
| English  | 🏴󠁧󠁢󠁥󠁮󠁧󠁿 |
| Italiano | 🇮🇹 |
| Français | 🇫🇷 |

---

## :link: API KEY

WhoIS XML API (optional, for extended domain lookups):  
[https://whois.whoisxmlapi.com](https://whois.whoisxmlapi.com)

---

## :sparkles: FEATURES

### Username Lookup
Search for a username across hundreds of social media platforms.

### Phone Lookup
Gather information about a phone number including carrier, location, and linked accounts.

### Website / Domain Lookup
Whois, DNS, headers, open ports, traceroute, and more.

### Person Search
Search for information about a person by name.

### Email Lookup
Check if an email address is linked to specific social networks or services — without alerting the target.

### Google Dorks
Search for videos, sounds, and images via Dorks. Supports date filtering and date ranges.

![Screenshot](Screenshot/Dorks.png)
![Screenshot](Screenshot/Dorks2.png)

### Port Scanner
Scan open ports on a target host.

### Graphs
Generate relationship graphs for information scheduling.

![Screenshot](Screenshot/Graph_Test.png)

### Interactive Maps
Plot gathered location data on an interactive Leaflet map.

![Screenshot](Screenshot/Map_Test.png)

> Powered by [Leaflet.js](https://leafletjs.com)

### PDF Export
Convert reports and graphs to PDF.

<p align="center">
  <img src="Screenshot/Dark_Pdf.png" height="400px" width="400px">
</p>

Available PDF themes: `Light 🌕`, `Dark 🌗`, `High-Contrast 🌑`

### File Transfer via QR Code
Transfer reports directly to your phone using a QR code.

<p align="center">
  <img src="Screenshot/File-Transfer.jpg" height="500px" width="300px">
</p>

### Encoding / Decoding
Encode and decode your reports.

### Hypothesis Generation
Generates hypotheses about a target based on their social media presence (may not be 100% accurate).

---

## :last_quarter_moon: DARK MODE

![Screenshot](Screenshot/Dark_Mode.png)

<p align="center">
  <img src="Screenshot/Dark.jpg" height="500px" width="300px">
</p>

---

## :full_moon: LIGHT MODE

![Screenshot](Screenshot/Light_Mode.png)

<p align="center">
  <img src="Screenshot/Light.jpg" height="500px" width="300px">
</p>

---

## :warning: NOTES

- **DATABASE is NOT available on Termux.**
- On Windows, if Python or PHP do not install automatically via winget, download them manually:
  - Python: [https://python.org](https://python.org)
  - PHP/XAMPP: [https://www.apachefriends.org](https://www.apachefriends.org)

---

## :label: VERSION

**T.G.D-1.0.4**

---

## :copyright: CREDITS

- Username icons in `GUI/Icon/Entities/Site_Icon` sourced from [iconfinder.com](https://www.iconfinder.com/) — all credit to their respective creators.
- Interactive maps powered by [Leaflet.js](https://leafletjs.com).
