#!/system/bin/sh

sync

sleep 2

echo 3 > /proc/sys/vm/drop_caches

# Disable unnecessary system services
pm disable-user com.android.printspooler
pm disable com.google.android.gms/.ads.identifier.service.AdvertisingIdService
pm disable com.google.android.gms/.ads.consent.ConsentService
pm disable com.google.android.gms/.analytics.AnalyticsService
pm disable com.google.android.gms/.analytics.AnalyticsJobService
pm disable com.google.android.gms/.gcm.GcmService
pm disable com.google.android.gms/.auth.BeaconService

# force stop
am force-stop com.instagram.android
am force-stop com.android.vending
am force-stop app.grapheneos.camera
am force-stop com.google.android.gm
am force-stop com.google.android.apps.youtube.creator
am force-stop com.dolby.ds1appUI
am force-stop com.google.android.youtube
am force-stop com.twitter.android
am force-stop nekox.messenger
am force-stop com.shopee.id
am force-stop com.vanced.android.youtube
am force-stop com.speedsoftware.rootexplorer
am force-stop com.bukalapak.android
am force-stop org.telegram.messenger
am force-stop ru.zdevs.zarchiver
am force-stop com.android.chrome
am force-stop com.google.android.GoogleCameraEng
am force-stop com.facebook.orca
am force-stop com.lazada.android
am force-stop com.android.camera
am force-stop com.android.settings
am force-stop com.franco.kernel
am force-stop com.telkomsel.telkomselcm
am force-stop com.facebook.katana
am force-stop com.instagram.android
am force-stop com.facebook.lite
am force-stop com.discord
am force-stop app.mdgram.android
am force-stop com.tokopedia.tkpd
am force-stop com.google.android.apps.weather
am force-stop com.android.chrome
am force-stop com.google.android.deskclock
am force-stop app.source.getcontact
am force-stop com.google.android.googlequicksearchbox
am force-stop com.miui.securitycenter
am force-stop com.miui.dialer
am force-stop com.miui.gallery
am force-stop com.miui.weather2
am force-stop com.miui.music
am force-stop com.miui.notes
am force-stop com.miui.videoplayer
am force-stop com.miui.scanner
am force-stop com.google.android.apps.maps
am force-stop com.google.android.apps.docs
am force-stop com.google.android.calendar
am force-stop com.google.android.keep
am force-stop com.whatsapp
am force-stop com.netflix.mediaclient
am force-stop com.spotify.music
am force-stop com.android.dialer
am force-stop com.android.contacts
am force-stop com.android.messaging
am force-stop com.android.settings
am force-stop com.android.fileexplorer
am force-stop com.android.deskclock
am force-stop com.android.calculator2
am force-stop com.android.calculator2
am force-stop com.google.android.apps.googleassistant
am force-stop com.google.android.play.protect
am force-stop org.telegram.messenger
am force-stop us.zoom.videomeetings
am force-stop com.google.android.apps.docs
am force-stop com.dropbox.android
am force-stop com.duolingo
am force-stop com.niksoftware.snapseed
am force-stop org.videolan.vlc
am force-stop com.mxtech.videoplayer.ad
am force-stop tv.twitch.android.app
am force-stop com.miui.fileexplorer
am force-stop com.miui.theme
am force-stop com.miui.appstore
am force-stop com.google.android.apps.adm
am force-stop com.google.android.play.games
am force-stop com.google.ar.core
am force-stop com.pinterest
am force-stop jp.naver.line.android
am force-stop org.telegram.messenger.lite
am force-stop com.google.android.apps.youtube.music
am force-stop com.mxtech.videoplayer.pro
am force-stop com.crunchyroll.crunchyroid
am force-stop com.amazon.amazonvideo.livingroom
am force-stop com.microsoft.skydrive
am force-stop cn.wps.moffice_eng
am force-stop com.paypal.android.p2pmobile
am force-stop com.ebay.mobile
am force-stop com.amazon.mShop.android.shopping
am force-stop com.piriform.ccleaner
am force-stop com.ubercab
am force-stop com.google.android.apps.nbu.files
am force-stop com.oasisfeng.greenify
am force-stop com.zhiliaoapp.musically
am force-stop com.xiaomi.joyose
am kill-all

for app in $(dumpsys activity processes | grep "ProcessRecord" | awk '{print $3}'); do
    am force-stop $app
done

setprop sys.lmk.minfree_levels 4096:0,5120:100,8192:200,24576:250,32768:900,47360:950
device_config put activity_manager max_cached_processes 16
echo "Infinity X script last executed on $(date)" > /data/local/tmp/init.clean.txt
