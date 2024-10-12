# flatpak.nix
{ lib, ... }: {

  services.flatpak.enable = true;

  services.flatpak.remotes = lib.mkOptionDefault [{
    name = "flathub";
    location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
  }];

  services.flatpak.update.auto.enable = false;
  services.flatpak.uninstallUnmanaged = false;
  services.flatpak.packages = [
    #{ appId = "com.brave.Browser"; origin = "flathub"; }
    # tools
    "com.mattjakeman.ExtensionManager"
    #"io.missioncenter.MissionCenter" bug-doesn't work
    "org.localsend.localsend_app"
    # video/audio players
    "io.github.dweymouth.supersonic"
    "org.videolan.VLC"
    # Web browsers
    "org.torproject.torbrowser-launcher"
    "com.brave.Browser"
    # Nextcloud apps
    "com.nextcloud.desktopclient.nextcloud"
    "md.obsidian.Obsidian"
    "org.gnome.World.Iotas"
    # books
    "com.calibre_ebook.calibre"
    # video/audio editing
    "org.kde.kdenlive"
    "org.audacityteam.Audacity"
    
  ];

}
