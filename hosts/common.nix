{ config, pkgs, ... }:
{
  imports = [

    ./common/boot.nix

    ./common/nix.nix
    ./common/local.nix

    ./common/networking.nix
    ./common/print.nix
    ./common/bluetooth.nix
    ./common/sound.nix

    ./common/users.nix

    ./common/plasma.nix
    ./common/x11.nix

    <home-manager/nixos>
  ];

  environment.systemPackages = with pkgs; [
    git
  ];
}
