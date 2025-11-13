{config, ...}: let
  inherit (config.variables) gitUsername gitEmail;
in {
  programs.git = {
    enable = true;
    ignores = [
      "*/.direnv"
      "*/.envrc"
    ];
    settings = {
      init = {
        defaultBranch = "main";
      };
      user = {
        name = "${gitUsername}";
        email = "${gitEmail}";
      };
    };
  };
}
