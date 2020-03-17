#echo '修改网关地址'
#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#echo '修改默认主题'
#sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

#echo '去除默认bootstrap主题'
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

echo '修改banner'
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/

echo '自定义配置'
rm -rf package/base-files/files/bin/config_generate
rm -rf package/kernel/mac80211/files/lib/wifi/mac80211.sh
rm -rf feeds/luci/modules/luci-base/root/etc/config/luci
cp -f ../config_generate package/base-files/files/bin/
cp -f ../mac80211.sh package/kernel/mac80211/files/lib/wifi/
cp -f ../luci feeds/luci/modules/luci-base/root/etc/config/

#echo '下载ServerChan'
#git clone https://github.com/tty228/luci-app-serverchan ../diy/luci-app-serverchan

#echo '加载QNTFS驱动'
#ln -s ../../driver ./package/openwrt-packages



