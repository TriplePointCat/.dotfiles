{
  description = "charlotte's nix config";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    nvf.url = "github:notashelf/nvf";
    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix";
    yazi-plugins = {
      url = "github:yazi-rs/plugins";
      flake = false;
    };
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    # leaving these empty in the repo to keep conflicts between machines away.
    host = "";
    profile = "";
    username = "";

    overlays = [
      (final: prev: {
        customPkgs = import ./modules/packages {pkgs = prev;};
        waybar = prev.waybar.overrideAttrs (old: {
          patches = (old.patches or []) ++ [ ./modules/home/waybar/hyprland-lua-dispatch.patch ];
        });
      })
    ];
  in {
    nixosConfigurations = {
      amd = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/amd
          {nixpkgs.overlays = overlays;}
        ];
      };
      nvidia = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/nvidia
          {nixpkgs.overlays = overlays;}
        ];
      };
      nvidia-laptop = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/nvidia-laptop
          {nixpkgs.overlays = overlays;}
        ];
      };
      intel = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/intel
        ];
      };
      vm = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/vm
          {nixpkgs.overlays = overlays;}
        ];
      };
      iso = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/iso
          {nixpkgs.overlays = overlays;}
        ];
      };
    };

    # dev tooling: a self-installing commit-msg hook enforcing conventional
    # commits. Activated by `.envrc` (`use flake`) via direnv.
    # one `direnv allow` per clone. cocogitto also renders CHANGELOG.md.
    checks.${system}.pre-commit = inputs.git-hooks.lib.${system}.run {
      src = ./.;
      hooks.cog = {
        enable = true;
        name = "cocogitto conventional-commit check";
        entry = "${pkgs.cocogitto}/bin/cog verify --file";
        language = "system";
        stages = ["commit-msg"];
        pass_filenames = true;
      };
    };

    devShells.${system}.default = pkgs.mkShell {
      inherit (self.checks.${system}.pre-commit) shellHook;
      buildInputs =
        self.checks.${system}.pre-commit.enabledPackages
        ++ [pkgs.cocogitto];
    };
  };
}
