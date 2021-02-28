#!/bin/bash
# Update & upgrade
apt-get update 
apt-get upgrade -y 

# WireGuard 
apt-get install -y wireguard
apt-get install -y wireguard-dkms wireguard-tools

# Configure wireguard
cd /etc/wireguard
sudo systemctl enable wg-quick@wg0
umask 077; wg genkey | tee privatekey | wg pubkey > publickey
cat <<EOT1 >> wg0.conf
[Interface]
Address = 10.20.30.1
ListenPort = 41820
PrivateKey = [VPN server private key]

[Peer]
# Name: [peer-machine-name]
PublicKey = [VPN peer public key]
AllowedIPs = [VPN Peer IP address]/32
EOT1


