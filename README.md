# 🏦 Secure Online Banking Application with AES Encryption

<div align="center">

**A comprehensive Java EE web application for online banking with AES file encryption, admin management, and secure transactions**

**Java EE | JSP/Servlets | MySQL | AES Encryption | JavaMail | Apache Commons**

</div>

---

## 📌 Project Overview

**Secure Online Banking Application** is a full-stack web-based banking system built on Java EE technology. It provides a complete banking solution with user account management, transaction processing, secure file storage with AES encryption, admin oversight, and automated email notifications. The application features a dual-interface design serving both end-users and administrators with distinct functionalities.

This project demonstrates enterprise-level Java web development, database integration, cryptographic implementations, and multi-tier architecture design suitable for financial applications.

### 🎯 Key Objectives

- **Digital Banking**: Complete online banking operations (deposits, withdrawals, transfers)
- **Secure File Management**: AES-encrypted file upload/download with FTP backup
- **Admin Control**: Account activation/rejection and transaction oversight
- **User Management**: Registration, login, profile management, and balance tracking
- **Communication**: Automated email notifications for critical operations
- **Complaint System**: Built-in complaint logging and resolution workflow

---

## ✨ Key Features

### 👤 User Features

**Account Management**
- New account registration with complete KYC details
- Photo upload for identity verification (stored as BLOB)
- User profile viewing and management
- PIN/password update functionality
- Account activation status tracking

**Banking Operations**
- Real-time balance checking
- Fund deposits to own account
- Withdrawals with balance validation
- Internal fund transfers between accounts
- Complete transaction history view
- Transaction timestamp and details logging

**Secure File Operations**
- Upload files with automatic AES-128 encryption
- Download encrypted files with seamless decryption
- File metadata tracking (owner, filename, upload date)
- Automatic FTP backup of encrypted files
- Base64 encoded key storage in database

**Communication**
- Submit complaints to admin
- View complaint status and responses
- Receive email notifications for important events
- Secret key delivery via Gmail SMTP

### 🔐 Admin Features

**Account Management**
- View all pending account opening requests
- Review KYC details and uploaded photos
- Activate approved accounts
- Reject invalid applications with reason tracking
- View all active users and their details

**Transaction Oversight**
- Monitor all system transactions
- View user-wise transaction history
- Admin-initiated deposits to user accounts
- Admin-initiated withdrawals (with authorization)
- Transaction audit trail

**Complaint Management**
- View all user complaints
- Track complaint resolution status
- Respond to user grievances
- Complaint categorization and prioritization

**System Administration**
- Secure admin login with credentials
- Dashboard with system statistics
- User activity monitoring
- File upload/download logs

---

## 🛠️ Technology Stack

### Core Technologies

| Technology | Version | Purpose |
|------------|---------|---------|
| **Java EE** | 7+ | Enterprise application framework |
| **JSP** | 2.3+ | Dynamic web pages |
| **Servlets** | 3.1+ | Server-side request handling |
| **MySQL** | 5.7+ | Relational database |
| **JDBC** | MySQL Connector/J | Database connectivity |

### Libraries & Dependencies

```xml
<!-- Apache Commons -->
commons-fileupload-1.3.jar      # Multipart file upload handling
commons-io-2.4.jar               # File I/O operations
commons-net-3.3.jar              # FTP client operations
commons-codec-1.10.jar           # Base64 encoding/decoding

<!-- JavaMail -->
mail.jar                         # Email notification system

<!-- MySQL -->
mysql-connector-java-5.1.23.jar # JDBC driver

<!-- Cryptography -->
JCE (Java Cryptography Extension) # AES encryption/decryption
```

### External Services

- **Gmail SMTP**: Email notifications and secret key delivery
- **FTP Server**: DriveHQ for encrypted file backup storage
- **AES-128**: Symmetric encryption for file security

---

## 📂 Project Structure

```
Secure-Online-Banking-AES/
│
├── src/
│   ├── java/
│   │   ├── com/multi/kk/action/
│   │   │   ├── Dbconnection.java          # Database connection handler
│   │   │   ├── Upload.java                # File upload with AES encryption
│   │   │   ├── download.java              # File download with decryption
│   │   │   ├── download1.java             # Alternative download handler
│   │   │   ├── encryption.java            # AES encryption utilities
│   │   │   ├── decryption.java            # AES decryption utilities
│   │   │   ├── TrippleDes.java            # TripleDES helper (legacy)
│   │   │   ├── Ftpcon.java                # FTP upload manager
│   │   │   └── Mail.java                  # Email notification sender
│   │   │
│   │   └── network/
│   │       ├── Recommend.java             # Account opening handler
│   │       └── mail.java                  # Alternative mail sender
│   │
│   └── conf/
│       └── MANIFEST.MF                     # Manifest file
│
├── web/
│   ├── WEB-INF/
│   │   ├── web.xml                        # Deployment descriptor
│   │   └── glassfish-web.xml              # GlassFish configuration
│   │
│   ├── META-INF/
│   │   └── context.xml                    # Context configuration
│   │
│   ├── Images/                            # UI images and icons
│   ├── style.css                          # Main stylesheet
│   ├── style2.css                         # Additional styles
│   ├── main.js                            # JavaScript utilities
│   │
│   ├── index.jsp                          # Landing page
│   ├── netbanking.jsp                     # User login page
│   ├── admin.jsp                          # Admin login page
│   │
│   ├── User Pages/
│   │   ├── accopening.jsp                 # Account opening form
│   │   ├── userdashboard.jsp              # User dashboard
│   │   ├── userprofile.jsp                # User profile view
│   │   ├── userbalance.jsp                # Balance inquiry
│   │   ├── usertransactions.jsp           # Transaction history
│   │   ├── usertransfer.jsp               # Fund transfer form
│   │   ├── depositcheck.jsp               # Deposit processing
│   │   ├── withdrawcheck.jsp              # Withdrawal processing
│   │   ├── transffercheck.jsp             # Transfer processing
│   │   ├── updatepincheck.jsp             # PIN update
│   │   └── usercomplients.jsp             # Submit complaints
│   │
│   ├── Admin Pages/
│   │   ├── adminlogcheck.jsp              # Admin authentication
│   │   ├── activations.jsp                # Pending activations
│   │   ├── activeusers.jsp                # Active user list
│   │   ├── acccheck.jsp                   # Account approval
│   │   ├── acceptcheck.jsp                # Activation processing
│   │   ├── rejectcheck.jsp                # Rejection processing
│   │   ├── rejections.jsp                 # Rejected accounts
│   │   ├── admintransactions.jsp          # All transactions
│   │   ├── admindeposit.jsp               # Admin deposits
│   │   ├── adminwithdraw.jsp              # Admin withdrawals
│   │   └── admincomplaints.jsp            # Complaint management
│   │
│   └── File Operations/
│       ├── owner.jsp                      # File owner view
│       ├── viewphoto.jsp                  # Photo viewer
│       ├── download.jsp                   # File download interface
│       └── emaildummy.jsp                 # Email testing
│
├── lib/                                   # JAR dependencies
├── build/                                 # Compiled classes
├── dist/                                  # WAR distribution
├── test.sql                               # Database schema & data
└── README.md                              # Project documentation
```

---

## 🗄️ Database Schema

**Database Name**: `test1`  
**Connection**: `jdbc:mysql://localhost:3306/test1` (user: root, password: root)

### Tables

**accopen**
- Stores initial account opening requests
- Fields: KYC details, contact info, photo (BLOB), application date
- Status: Pending until admin approval

**activeusers / activeuser / activeuserss**
- Activated and active user accounts
- Fields: user_id, name, email, phone, balance, account_number, status
- Variants track different states (random IDs, balance updates)

**userlog**
- User login credentials
- Fields: username, password (plaintext), account_number
- Used for authentication

**adminlog**
- Admin login credentials
- Fields: admin_id, username, password (plaintext)

**files**
- Encrypted file metadata and content
- Fields: file_id, filename, owner, original_file (BLOB), encrypted_data (BLOB), aes_key (Base64), upload_date, status

**complaints**
- User complaint records
- Fields: complaint_id, user_id, subject, description, date, status, admin_response

**reject**
- Rejected account applications
- Fields: application_id, rejection_reason, rejected_date

---

## 🔐 Security Architecture

### AES-128 Encryption Workflow

```
File Upload Process:
┌─────────────────────────────────────────────────────────────┐
│  User selects file → Upload Servlet                         │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Generate Random AES-128 Key (per file)                     │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Encrypt File Content using AES                             │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Store in Database:                                          │
│  - Original file (BLOB)                                      │
│  - Encrypted data (BLOB)                                     │
│  - AES key (Base64 encoded)                                  │
│  - Metadata (filename, owner, date)                          │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Write encrypted file to local: D:/FileUpload/              │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Upload to FTP: ftp.drivehq.com (backup)                    │
└─────────────────────────────────────────────────────────────┘

File Download Process:
┌─────────────────────────────────────────────────────────────┐
│  User requests file → download/download1 Servlet            │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Fetch from Database:                                        │
│  - Encrypted data (BLOB)                                     │
│  - Stored AES key (Base64)                                   │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Decode Base64 key → Decrypt file with AES                  │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│  Stream decrypted file as download (plaintext restored)     │
└─────────────────────────────────────────────────────────────┘
```

### Email Notification System

- **Gmail SMTP** integration for automated emails
- **Use Cases**: Account activation, secret key delivery, transaction alerts
- **Configuration**: Hardcoded app password (should use environment variables in production)

---

## ⚙️ Installation & Setup

### Prerequisites

- **Java Development Kit (JDK)**: Version 8 or higher
- **Java EE Application Server**: GlassFish 4.x / Apache Tomcat 8.x+
- **MySQL Server**: Version 5.7 or higher
- **IDE**: NetBeans (recommended) / Eclipse / IntelliJ IDEA
- **Internet Connection**: For Gmail SMTP and FTP operations

### Step 1: Database Setup

```sql
-- Create database
CREATE DATABASE test1;

-- Import schema
mysql -u root -p test1 < test.sql

-- Verify tables
USE test1;
SHOW TABLES;
```

### Step 2: Configure Database Connection

Edit `src/java/com/multi/kk/action/Dbconnection.java`:

```java
public static Connection getConnection() {
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/test1",
            "root",        // Change if needed
            "root"         // Change if needed
        );
        return con;
    } catch (Exception e) {
        e.printStackTrace();
        return null;
    }
}
```

### Step 3: Create Upload Directory

```bash
# Windows
mkdir D:\FileUpload

# Linux/macOS (update Upload.java to use this path)
mkdir -p /var/uploads/banking
```

### Step 4: Configure External Services (Optional)

**Gmail SMTP** - Edit `Mail.java` and `network/mail.java`:
```java
final String username = "your-email@gmail.com";
final String password = "your-app-password";  // Generate from Google Account
```

**FTP Server** - Edit `Ftpcon.java`:
```java
ftpClient.connect("ftp.drivehq.com", 21);
ftpClient.login("your-username", "your-password");
```

### Step 5: Deploy Application

**Using NetBeans**:
1. Open project in NetBeans
2. Resolve library dependencies (add JARs from `lib/` folder)
3. Right-click project → Clean and Build
4. Right-click project → Run (auto-deploys to GlassFish)

**Manual Deployment**:
```bash
# Build WAR file
ant clean
ant dist

# Deploy to Tomcat
cp dist/SecureBanking.war /path/to/tomcat/webapps/

# Start server
cd /path/to/tomcat/bin
./startup.sh  # Linux/macOS
startup.bat   # Windows
```

### Step 6: Access Application

Open browser and navigate to:
- **Homepage**: `http://localhost:8080/SecureBanking/`
- **User Login**: `http://localhost:8080/SecureBanking/netbanking.jsp`
- **Admin Login**: `http://localhost:8080/SecureBanking/admin.jsp`

---

## 💡 Usage Guide

### For End Users

**1. Account Opening**
- Click "Open Account" on homepage
- Fill KYC form with personal details
- Upload photo for verification
- Submit application
- Wait for admin activation (check email)

**2. Login & Dashboard**
- Enter username and password at netbanking.jsp
- Access dashboard with account overview
- View balance, profile, and transaction history

**3. Banking Operations**
- **Deposit**: Enter amount → Confirm → Balance updated
- **Withdraw**: Enter amount → Validate balance → Process
- **Transfer**: Enter recipient account → Amount → Execute
- **History**: View all past transactions with timestamps

**4. File Operations**
- Upload documents (automatically encrypted with AES)
- Download files (seamlessly decrypted)
- View uploaded file list

**5. Complaints**
- Navigate to complaints section
- Submit issue with description
- Track complaint status

### For Administrators

**1. Admin Login**
- Use admin credentials at admin.jsp
- Access admin dashboard

**2. Account Management**
- View pending account requests
- Review KYC details and photos
- Activate approved accounts
- Reject invalid applications with reason

**3. Transaction Management**
- View all system transactions
- Monitor user activity
- Perform admin deposits/withdrawals

**4. Complaint Resolution**
- View all user complaints
- Add responses
- Update complaint status

---

## 🎓 Core Functionalities

### User Authentication Flow
```
User → netbanking.jsp → userlogcheck.jsp → Validate credentials
    ↓
If valid → userdashboard.jsp (session created)
If invalid → Error message + redirect to login
```

### Account Activation Flow
```
New User → accopening.jsp → /Recommends servlet
    ↓
Save to activeuserss (isActive='False')
    ↓
Admin → activations.jsp → Review KYC
    ↓
Approve → acceptcheck.jsp (update isActive='True')
Reject → rejectcheck.jsp (move to reject table)
```

### Transaction Processing
```
User initiates transaction → Validate balance/account
    ↓
Update sender balance (deduct)
    ↓
Update receiver balance (credit) [for transfers]
    ↓
Log transaction in database
    ↓
Send email confirmation
    ↓
Display success message
```

---

## ⚠️ Security Considerations & Limitations

### Current Implementation Issues

**🔴 Critical Security Concerns**:

1. **Plaintext Passwords**: User and admin passwords stored without hashing
   - **Risk**: Database breach exposes all credentials
   - **Solution**: Implement BCrypt/PBKDF2 password hashing

2. **SQL Injection Vulnerability**: String concatenation in queries
   - **Risk**: Malicious input can manipulate database
   - **Solution**: Use PreparedStatements for all queries

3. **Hardcoded Credentials**: DB, FTP, Gmail passwords in source code
   - **Risk**: Exposed in version control and compiled code
   - **Solution**: Use environment variables or config files

4. **AES ECB Mode**: Default encryption mode (ECB) is insecure
   - **Risk**: Identical plaintext blocks produce identical ciphertext
   - **Solution**: Use AES-CBC or AES-GCM with proper IV

5. **Key Storage**: AES keys stored alongside encrypted data
   - **Risk**: Compromise of database exposes both keys and data
   - **Solution**: Use key management service (KMS) or separate key storage

6. **No CSRF Protection**: State-changing operations lack CSRF tokens
   - **Risk**: Cross-site request forgery attacks
   - **Solution**: Implement CSRF tokens for all forms

7. **Deprecated APIs**: Using `sun.misc.Base64` (non-public API)
   - **Risk**: May break in future Java versions
   - **Solution**: Use `java.util.Base64` (Java 8+)

### Recommended Security Enhancements

```java
// Example: Password hashing with BCrypt
import org.mindrot.jbcrypt.BCrypt;

String hashedPassword = BCrypt.hashpw(plainPassword, BCrypt.gensalt(12));
boolean isMatch = BCrypt.checkpw(enteredPassword, storedHash);

// Example: PreparedStatement to prevent SQL injection
String sql = "SELECT * FROM userlog WHERE username = ? AND password = ?";
PreparedStatement pst = con.prepareStatement(sql);
pst.setString(1, username);
pst.setString(2, hashedPassword);
ResultSet rs = pst.executeQuery();

// Example: AES-CBC with IV
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
SecureRandom random = new SecureRandom();
byte[] iv = new byte[16];
random.nextBytes(iv);
IvParameterSpec ivSpec = new IvParameterSpec(iv);
cipher.init(Cipher.ENCRYPT_MODE, secretKey, ivSpec);
```

---

## 🔮 Future Enhancements

- [ ] **Password Hashing**: Implement BCrypt for secure password storage
- [ ] **Prepared Statements**: Prevent SQL injection across all queries
- [ ] **Environment Configuration**: Externalize credentials and configs
- [ ] **Session Management**: Add session timeout and secure cookie handling
- [ ] **Two-Factor Authentication**: SMS/email OTP for login
- [ ] **Transaction Limits**: Daily/monthly withdrawal and transfer limits
- [ ] **Audit Logging**: Comprehensive logging of all operations
- [ ] **REST API**: Modern API for mobile app integration
- [ ] **Responsive Design**: Mobile-friendly UI with Bootstrap
- [ ] **Real-time Notifications**: WebSocket for instant alerts
- [ ] **PDF Statements**: Generate account statements
- [ ] **Advanced Analytics**: Transaction patterns and spending insights

---

## 📜 License

This project is licensed under the **MIT License** - free for educational and personal use.

---

## ⚠️ Disclaimer

**EDUCATIONAL PROJECT** - This application is built for learning purposes and demonstrates Java EE web development concepts. 

**NOT PRODUCTION-READY** - Contains known security vulnerabilities and should NOT be used for real banking operations without:
- Comprehensive security audit
- Implementation of recommended security enhancements
- Compliance with financial regulations (PCI-DSS, SOC 2)
- Penetration testing
- Code review by security professionals

**Use at your own risk** - The author assumes no liability for any misuse or damages.

---

## 👨‍💻 Author

**Darshan C S**

- GitHub: [@darshancs2002](https://github.com/darshancs2002)
- Email: darshanlingiah3@gmail.com
- Project: [Secure Online Banking AES](https://github.com/darshancs2002/Secure-Online-Banking-AES)

---

## 🤝 Contributing

Contributions to improve security and functionality are welcome!

**Priority Areas**:
1. Security enhancements (password hashing, SQL injection prevention)
2. UI/UX improvements
3. Code refactoring and documentation
4. Additional features (2FA, PDF statements)

```bash
git checkout -b feature/SecurityEnhancement
git commit -m 'Add BCrypt password hashing'
git push origin feature/SecurityEnhancement
```

---

## ⭐ Acknowledgments

- **Apache Commons**: FileUpload, IO, Net libraries
- **JavaMail API**: Email notification system
- **MySQL**: Database management
- **Java Community**: JCE cryptography extensions

---

<div align="center">

**🏦 Built with Java EE for learning enterprise web development 🔐**

**© 2025 Darshan C S. Educational Project.**

</div>
