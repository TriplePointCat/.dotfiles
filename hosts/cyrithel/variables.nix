{
  # Git Configuration ( For Pulling Software Repos )
  profile = "nvidia";
  user = "imoen";
  gitUsername = "TriplePointCat";
  gitEmail = "68162904+TriplePointCat@users.noreply.github.com";
  sshAuthorizedKeys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPxvLjTg/ZPIWQ8EgG8BOoBF7ZQTIPyERo0SPAkihEWa lottie@laptop2"
  ];

  # Hyprland Settings
  extraMonitorSettings = [
    {
      output = "DP-4";
      mode = "2560x1440@144";
      position = "auto";
      scale = "1";
    }
    {
      output = "DP-5";
      mode = "3840x2160@160";
      position = "auto-right";
      scale = "1";
    }
  ];
  extraHardwareSettings = {
    opengl = {nvidia_anti_flicker = 0;};
    debug = {damage_tracking = 0;};
  };

  defaultWallpaper = "DSCF3713.JPG";

  fontSizes = {
    applications = 12;
    terminal = 15;
    desktop = 11;
    popups = 12;
  };

  # Waybar Settings
  clock24h = true;

  # variables which toggle packages
  gamedev = true;
  gaming = true;
  texlive = true;
  silly = true;

  # Enable NFS
  enableNFS = true;
}
