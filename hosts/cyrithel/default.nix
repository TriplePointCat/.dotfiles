{pkgs, ...}: {
  imports = [./hardware.nix];

  users.users.lottie = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPxvLjTg/ZPIWQ8EgG8BOoBF7ZQTIPyERo0SPAkihEWa lottie@laptop2"
    ];
  };

  nix.settings.trusted-users = ["lottie"];
}
