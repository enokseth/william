# William: AltServer Linux for European Developers

**William** is a powerful, Linux-based alternative to AltServer tailored for European developers. Designed with compliance to new European regulations for Apple, William simplifies the management of iOS app installation, provisioning, and development for open ecosystems.

---

## 🚀 Features

### Core Features

- **AltServer Replacement**: Full-featured alternative to AltServer for Linux users.
- **IPA Signing and Installation**: Seamlessly sign and install `.ipa` files using your Apple Developer credentials.
- **Provisioning Profile Management**: Auto-generate mobileconfig files for OTA (Over-The-Air) installation.
- **Device Pairing**: Effortlessly pair iOS devices for debugging and development.
- **SideJITServer**: Any automatical enabled version compatible all ios SideJITServer and SideStore.

### Developer-Centric Features
- **Multi-Device Support**: Manage multiple devices simultaneously.
- **Dynamic Certificate Signing**: Automates certificate signing via OpenSSL for advanced workflows.
- **GUI Integration**: Beautiful GTK-based GUI for managing your development needs.
- **Server API**: RESTful API for integrating William into your CI/CD pipelines.
- **European Compliance**: Fully adheres to the latest European legislation for open ecosystems, supporting sideloading and alternative app stores.

### European Regulations Ready
- **No Restrictions**: William supports installing any application without requiring App Store validation.
- **Secure Anisette Server**: Hosted anisette server ensures your Apple ID login complies with new privacy standards.
- **Localization**: Multilingual support for European languages, including French, German, and Italian.
---

## 🛠️ Installation

### Prerequisites

- **Linux Distribution**: Works best on Ubuntu 20.04+ or Debian-based systems.

- **Dependencies**:
  - Python 3.8+
  - GTK 3+
  - OpenSSL
  - Flask
  - `ideviceinstaller`, `libimobiledevice`

### Step-by-Step Guide

1. **Clone the repository**:
   ```bash
   git clone https://github.com/enokseth/william.git
   cd william

2. **Install required dependencies**:

```bash
sudo apt update
sudo apt install python3 python3-pip libimobiledevice-utils gtk+3.0 openssl
pip3 install -r requirements.txt
```

3. **Generate signing keys**:

```bash
openssl genrsa -out certs/private_key.pem 2048
openssl req -new -x509 -key certs/private_key.pem -out certs/apple_cert.pem -days 365
```

### THIS SECTION IS NOT IMPLEMENTED YET 
4. **Configure the project**:

 - Edit the `config.json` file with your Apple Developer details:

    ```bash
    {
    "app_name": "William",
    "bundle_id": "com.example.william",
    "app_version": "1.0",
    "server_url": "https://yourserver.com",
    "signing_key": "certs/private_key.pem",
    "developer_identity": "certs/apple_cert.pem"
    }
    ```
5. **Start the GUI or Flask server**:

`python3 william.py`

# 💡 Usage
## GUI Mode 
- Launch the GTK-based GUI by running the main application.
- Use the GUI to:
    - Pair devices.
    - Sign and install `.ipa` files.
    - Generate mobileconfig files for OTA distribution.

## API Mode
- Access the server at `http://127.0.0.1:5000`.
- Use the API endpoints to automate tasks:
    - Upload IPA: `/upload_ipa` (POST)
    - Download Files: `/ipa`, `/mobileconfig`, `/manifest.plist`
