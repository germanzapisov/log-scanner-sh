
cd ~/Desktop
mkdir logs
cd logs
echo > logs_skan.txt

function skanner() {
  find ~ -name "$1" | while read file
do
  grep -EH 'ERROR|DEBUG' "$file" >> logs_skan.txt
done
}

skanner "*.log"
echo "successful"