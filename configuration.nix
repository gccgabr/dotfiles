{ config, lib, pkgs, ... }:
{
	imports =
		[
			./hardware-configuration.nix
		];

	boot = {
		loader = {
			efi.canTouchEfiVariables = true;
			grub = {
				enable = true;
				device = "nodev";
				efiSupport = true;
			};
		};
		initrd.luks.devices.cryptroot.device = "/dev/disk/by-uuid/1651c7cf-ceaf-41fd-822f-a9a6818862a9";
	};	

	networking.networkmanager.enable = true;
	time.timeZone = "America/Santarem";
	i18n.defaultLocale = "pt_BR.UTF-8";
	services.printing.enable = true;
	sound.enable = true;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
		jack.enable = true;
	};

	users.users.gabriel = {
	      	isNormalUser = true;
	      	extraGroups = [ "wheel" "audio" "video" "input" ]; # Enable ‘sudo’ for the user.
	      	packages = with pkgs; [
	      		tree
	      	];
	};

	environment.systemPackages = with pkgs; [
	  vim
		R
		rustup
		julia
		gcc
		zig
		ghc
		cinnamon.nemo	
		libreoffice
		pavucontrol
		bluez
	  wget
		libnotify
		rofi-wayland
		chromium	
		wl-clipboard
		foot
		brightnessctl
		git
		sway
	];

	fonts.packages = with pkgs; [
		noto-fonts
	];

	services.openssh.enable = true;
	services.greetd = {                                                      
		enable = true;                                                         
		settings = {                                                           
			default_session = {                                                  
				command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
				user = "greeter";                                                  
			};                                                                   
		};                                                                     
	};

	system.stateVersion = "24.05";
}
