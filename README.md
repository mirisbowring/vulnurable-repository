# Vulnurable Repository

This is a repo that contains source code with "secrets" (they are randomly generated) to test secret recognition tools.

# Current Secrets
### AWS
Paths: [ `Secrets/aws` ]  
- [x] deleted `aws_access_key_id`
- [x] sample `aws_secret_access_key`
- [x] sample `aws_session_token`
### Public / Private Keys
Paths: [ `Secrets/id_rsa` , `Secrets/ssh/*` ]  
- [x] ssh_dsa1024
- [x] ssh_ecdsa256
- [x] ssh_ecdsa384
- [x] ssh_ecdsa521
- [x] ssh_ed25519256
- [x] ssh_rsa1024
- [x] ssh_rsa2048
- [x] ssh_rsa4069
- [x] ssh_rsa8192  

**Note**  
There are the corresponding public key and the fingerprint for each private key.  
The keys have been generated with the `key-generator.sh`.  
  
### Database Connects
Paths: [ `Python/main.py`, `Java/src/app/App.java`, `Configs/config.ini` ]  
- [x] Python MySQL connect
- [x] Java JDBC MySQL Connect
- [x] INI File to configure any application with Postgres, MySQL or SQLite (The file is separated into positive and false positive section)

### URL Requests
Paths: [ `Java/src/app/App.java`, `Bash/main.sh` ]  
- [x] Curl with credentials (URL query) to GitHub to retrieve session token
- [x] Generic login URL query with username and password (Java)
