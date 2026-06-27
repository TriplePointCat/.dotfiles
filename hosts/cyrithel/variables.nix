{
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "TriplePointCat";
  gitEmail = "68162904+TriplePointCat@users.noreply.github.com";

  # Hyprland Settings
  extraMonitorSettings = [
    { output = "DP-4"; mode = "2560x1440@144"; position = "auto"; scale = "1"; }
    { output = "DP-5"; mode = "3840x2160@160"; position = "auto-right"; scale = "1"; }
  ];
  extraHardwareSettings = {
    opengl = { nvidia_anti_flicker = 0; };
    debug  = { damage_tracking = 0; };
  };

  defaultWallpaper = "DSCF3713.JPG";

  theme = "catppuccin-mocha";

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

  # Program Options
  browser = "zen"; # Set Default Browser (google-chrome-stable for google-chrome)
  terminal = "kitty"; # Set Default System Terminal
  keyboardLayout = "";
  consoleKeyMap = "us";

  editor = "nvim";
  EDITOR = "nvim";
  VISUAL = "nvim";

  # For Nvidia Prime support
  intelID = "PCI:1:0:0";
  nvidiaID = "PCI:0:2:0";

  # Enable NFS
  enableNFS = true;
}
