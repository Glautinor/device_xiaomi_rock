#!/system/bin/sh

setprop sys.lmk.minfree_levels 4096:0,5120:100,8192:200,24576:250,32768:900,47360:950
device_config put activity_manager max_cached_processes 16

echo "Infinity X script last executed on $(date)" > /data/local/tmp/init.cache.txt
