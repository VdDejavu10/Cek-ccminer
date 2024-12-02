# Cek-ccminer
Cek ccminer running


Download file

wget https://raw.githubusercontent.com/VdDejavu10/Cek-ccminer/refs/heads/main/run_cek.sh

chmod +x run_cek.sh

Tambahkan di Schedule

crontab -e

*/5 * * * * bash /root/run_cek.sh

Auto delete log setiap jam 00.00

0 0 * * * bash sed -i 'd' /root/run_cek.log

