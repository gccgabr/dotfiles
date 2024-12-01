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
	security.rtkit.enable = true;

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
		wget
		rofi-wayland
		firefox
		wl-clipboard
		foot
		brightnessctl
		git
		sway
		gh
		nodejs
		openjdk
		nginx
		apache-httpd
		vimiv-qt
		grim
		slurp
		waylock
		iperf
		wireshark
		nmap
		thc-hydra
		sqlmap
		tor
		clipman
		way-displays
	];

	fonts.packages = with pkgs; [
		noto-fonts
	];

	hardware.bluetooth.enable = true;
	hardware.bluetooth.powerOnBoot = true;
	hardware.bluetooth.settings = {
		General = {
			Experimental = true;
		};
	};
	hardware.pulseaudio = {
		enable = true;
		package = pkgs.pulseaudioFull;
	};

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
	services.blueman.enable = true;
	services.printing.enable = true;

	system.stateVersion = "24.05";
}
