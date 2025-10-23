# Used for Morimotolab.
#
# This script install SuperCollider and other required software.
# It will create a `start.sh` and `start.scd` in `/home/pi`.
# `start.sh` will launch SuperCollider and run `start.scd`.

home_directory="/home/pi"

start_sh_url="https://raw.githubusercontent.com/OzelotVanilla/RaspiSuperColliderInstaller/refs/heads/main/start.sh"

cd $home_directory

sudo apt update -y
sudo apt full-upgrade -y
sudo apt install -y jackd2 # yes, for RT priority
sudo apt install -y supercollider

wget -P "$home_directory" -O start.sh "$start_sh_url"

touch "$home_directory/start.scd"