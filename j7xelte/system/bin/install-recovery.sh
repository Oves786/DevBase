#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:20180992:9fd426714b0064ff2389c51de64cd27ecc7c5ad1; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:17784832:596615cbdfabc2f683f2e1e06097b4b8de2a577d EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 9fd426714b0064ff2389c51de64cd27ecc7c5ad1 20180992 596615cbdfabc2f683f2e1e06097b4b8de2a577d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
