#!/bin/bash

# Change the reHLDS link below
reHLDS_link="http://(reHLDS Link Place)/reHLDS.zip"

# Define the required files and folders
cstrike="cstrike"
hlds_linux="hlds_linux"
hlds_run="hlds_run"
reHLDS="reHLDS.zip"

# Trying to remove old cs1.6 server files
for file in *; do
  if [ "$file" != "reinstall.sh" ]; then
    [ -e "$file" ] && rm -r "$file"
  fi
done
echo "Removing Old Server files.."
echo "Downloading reHLDS.."
wget -O "$reHLDS" "$reHLDS_link"
unzip -o "$reHLDS"
# Check if server files exist
if [ -d "$cstrike" ] && [ -f "$hlds_linux" ] && [ -f "$hlds_run" ]; then
rm -r "$reHLDS"
echo "Server reinstalled successfully!"
sleep 1
echo "Script Created By ! A M 1 N E"
echo "Get More at : https://github.com/Amine-Aziz/"
sleep 10

else
  if [ -f "$reHLDS" ]; then
  echo "Files mising, reconfiguring files.."
  unzip -o "$reHLDS"
    echo "Server reinstalled successfully!"
  else
    echo "$reHLDS not found. script cannot complete reinstall."
  fi
fi
sleep 1
echo "Script Created By ! A M 1 N E"
echo "Get More at : https://github.com/Amine-Aziz/"
sleep 10




