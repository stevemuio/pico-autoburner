
#!/bin/bash

echo "Scanning for RPi in /Volumes .. Press [CTRL+C] to stop.."
while true; do
  echo "scanning"
  # Loop through files in the target directory
  for file in /Volumes/*; do
    if [[ $file == *RPI-* ]]; then
     echo "$file"
     cp $1 $file/$1
    fi
    
  done
  echo "scan complete"
  sleep 1
done