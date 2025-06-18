#!/system/bin/sh

while true; do
  # Get the current hour (in 24-hour format)
  current_hour=$(date +%H)

  # Check if the current hour is 3 AM
  if [ "$current_hour" -eq 3 ]; then
    # Execute your script
    sh /vendor/bin/init.cache.sh
  fi

  # Wait for 1 hour before checking the time again
  sleep 3600
done

echo "Infinity X script last executed on $(date)" > /data/local/tmp/init.cache.txt
