{pkgs, ...}: {
    home.username = "elias";
    home.homeDirectory = "/home/elias";
    home.stateVersion = "24.05";
    programs.home-manager.enable = true;
}
