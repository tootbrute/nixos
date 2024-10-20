{ config, pkgs, lib, ... }:

{

  # hide desktop icons for things i don't want
  xdg.desktopEntries.btop = {
    type = "Application";
    name = "Btop";
    exec = "btop";
    terminal = true;
    noDisplay = true;
  };

  # Auto unlock gnome keyring
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.sddm.enableGnomeKeyring = true;

  # Remove default packages from GNOME
  environment.gnome.excludePackages = with pkgs.gnome; [
    baobab      # disk usage analyzer
    cheese      # photo booth
    eog         # image viewer
    epiphany    # web browser
    #gedit       # text editor
    simple-scan # document scanner
    totem       # video player
    yelp        # help viewer
    evince      # document viewer
    file-roller # archive manager
    geary       # email client
    seahorse    # password manager
    gnome-contacts
    gnome-weather
    gnome-maps
    gnome-music
    gnome-software
    pkgs.gnome-extension-manager
    gnome-shell-extensions
    pkgs.gnome-photos
    pkgs.gnome-connections
    pkgs.snapshot
    gnome-logs
    gnome-system-monitor
    gnome-calculator
    pkgs.gnome-tour
    #gnome-calendar
    #gnome-characters
    #gnome-clocks
    #gnome-font-viewer gnome-screenshot
    #gnome-disk-utilitys
  ];

  environment.systemPackages = with pkgs; [
    #Gnome tweak tools
    gnome.gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.caffeine
    gnomeExtensions.gsconnect
    gnomeExtensions.hot-edge
    gnomeExtensions.alphabetical-app-grid
  ];

}
