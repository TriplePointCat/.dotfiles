{
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "TriplePointCat";
  gitEmail = "68162904+TriplePointCat@users.noreply.github.com";

  # Hyprland Settings
  extraMonitorSettings = [
    { output = "eDP-1"; mode = "1920x1080@144"; position = "auto"; scale = "1"; }
    { output = "HDMI-A-1"; mode = "highres"; position = "auto"; scale = "1"; }
  ];
  extraHardwareSettings = {};
  defaultWallpaper = "MST23.png";

  theme = "catppuccin-mocha";

  fontSizes = {
    applications = 14;
    terminal = 18;
    desktop = 12;
    popups = 12;
  };

  # Waybar Settings
  clock24h = true;

  # variables which toggle packages
  gamedev = false;
  gaming = true;
  texlive = false;
  silly = false;

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
