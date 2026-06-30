{
  # Host identity ( read by flake.nix to wire drivers + user )
  profile = "iso"; # live installer image under ./profiles
  user = "lottie";

  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "658060";
  gitEmail = "31701136+658060@users.noreply.github.com";

  # Hyprland Settings
  extraMonitorSettings = [
    { output = ""; mode = "1920x1080@60"; position = "auto"; scale = "1"; }
  ];
  extraHardwareSettings = {};
  defaultWallpaper = "hollow-knight.png";

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
  gamedev = false;
  gaming = false;
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
  enableNFS = false;
}
