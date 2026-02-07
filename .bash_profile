crtsh(){
  curl -s "https://crt.sh/?q=%.$1&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u
}


#nano ~/.bash_profile


#source ~/.bash_profile









