#!/system/bin/sh

device_config put activity_manager max_cached_processes 8

echo "Infinity X script last executed on $(date)" > /data/local/tmp/init.cache.txt
