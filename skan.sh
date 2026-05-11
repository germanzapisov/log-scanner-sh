cd ~
cd ~/Desktop
mkdir logs
cd logs
echo '' > logs_skan.txt

find ~ -name '*.log'| while read file
do
  grep -H 'ERROR' '$file' >> logs_skan.txt
  grep -H 'DEBUG' '$file' >> logs_skan.txt
done
