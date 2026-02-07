#!/bin/bash

echo "[+] Installing recon tools..."

sudo apt install -y subfinder assetfinder dirsearch arjun paramspider jq

echo "  -> katana"
go install github.com/projectdiscovery/katana/cmd/katana@latest

echo "  -> gau"
go install github.com/lc/gau/v2/cmd/gau@latest

echo "  -> waybackurls"
go install github.com/tomnomnom/waybackurls@latest

echo "  -> httpx"
go install github.com/projectdiscovery/httpx/cmd/httpx@latest

echo "  -> httprobe"
go install github.com/tomnomnom/httprobe@latest

echo "  -> gowitness"
go install github.com/sensepost/gowitness@latest


echo "[+] Installation complete 🎉"

sudo cp /home/kali/go/bin/* /usr/local/bin/

echo "[+] Installed tools:"
which katana gau waybackurls httpx httprobe gowitness
