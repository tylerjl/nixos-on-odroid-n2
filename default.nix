{ pkgs, ... }:
{
  imports = [
    ./kboot-conf
  ];
  boot.loader.grub.enable = false;
  boot.loader.kboot-conf.enable = true;
  boot.kernelParams = [ "console=ttyAML0,115200n8" ];
  boot.consoleLogLevel = 7;
  hardware.deviceTree.name = "amlogic/meson-g12b-odroid-n2-plus.dtb";
  # Previously used the latest kernel; this is recent enough now that
  # support is in mainline.
}
