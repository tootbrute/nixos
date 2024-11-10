git add .
git commit -m "update"
git push origin main
sudo nix flake update
sudo nixos-rebuild switch
#git status
