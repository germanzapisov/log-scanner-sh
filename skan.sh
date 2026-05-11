
cd ~/Desktop
mkdir logs
cd logs
mkdir photo
echo > logs_skan.txt

function skanner_debug() {
  find ~ -name "$1" | while read file
do
  grep -EH 'ERROR|DEBUG' "$file" >> logs_skan.txt
done
}

function skanner_photo() {
  find ~ -type f \( -name "$1" -o -name "$2" -o -name "$3"\) | while read photo
  do
    cp "$photo" ~/Desktop/logs/photo
  done
}
skanner_debug "*.txt"

skanner_photo "*.jpg" "*.png" "*.jpeg"

echo "successful"