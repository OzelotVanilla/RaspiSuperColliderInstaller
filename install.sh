# Used for Morimotolab.
#
# This script install SuperCollider and other required software.
# It will create a `start.sh`, `start.scd`, and `stop.sh` in `/home/pi`.
# `start.sh` will launch SuperCollider and run `start.scd`.
# `stop.sh` will stop all SuperCollider-related process.

home_directory="/home/pi"

start_sh_url="https://raw.githubusercontent.com/OzelotVanilla/RaspiSuperColliderInstaller/refs/heads/main/start.sh"
stop_sh_url="https://raw.githubusercontent.com/OzelotVanilla/RaspiSuperColliderInstaller/refs/heads/main/stop.sh"

cd $home_directory

# Download necessary packages.
sudo apt update -y
sudo apt full-upgrade -y
sudo apt DEBIAN_FRONTEND=noninteractive install -y jackd2
sudo apt install -y supercollider

# Download two scripts.
wget -P "$home_directory" -O start.sh "$start_sh_url"
wget -P "$home_directory" -O stop.sh  "$stop_sh_url"
chmod +x "$home_directory/start.sh"
chmod +x "$home_directory/stop.sh"

# Create empty `start.scd`.
touch "$home_directory/start.scd"