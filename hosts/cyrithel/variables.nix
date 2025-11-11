{
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "CharredLee";
  gitEmail = "31701136+CharredLee@users.noreply.github.com";

  # Hyprland Settings
  extraMonitorSettings = "
    monitor = HDMI-A-1, 3840x2160@60, auto-left, auto
    monitor = DP-1, 2560x1440@144, auto, auto
    monitor = DP-2, 3840x2160@160, auto-right, 1
  ";
  extraHardwareSettings = "
    opengl {
      nvidia_anti_flicker = 0
    }

    misc {
      vfr = 0
    }

    debug {
      damage_tracking = 0
    } 
  ";
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
  keyboardLayout = "us";
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
