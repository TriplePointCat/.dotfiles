{
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "TriplePointCat";
  gitEmail = "pimstack@gmail.com";

  # Hyprland Settings
  extraMonitorSettings = "
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
  defaultWallpaper = "DSCF4019.JPG";

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
  gaming = true;
  texlive = true;
  silly = true;

  # Program Options
  browser = "firefox"; # Set Default Browser (google-chrome-stable for google-chrome)
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
