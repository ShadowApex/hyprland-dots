
ALL := $(HOME)/.autostart $(HOME)/.scripts $(HOME)/.wallpapers $(HOME)/.config/hypr \
       		$(HOME)/.config/dunst $(HOME)/.config/pipewire/pipewire.conf.d \
		$(HOME)/.config/rofi $(HOME)/.config/swaylock $(HOME)/.config/viewnior \
		$(HOME)/.config/waybar $(HOME)/.config/wlogout

.PHONY: install
install: $(ALL)


.PHONY: uninstall
uninstall:
	rm -rf $(ALL)


$(HOME)/.autostart:
	ln -s $(PWD)/.autostart $@


$(HOME)/.scripts:
	ln -s $(PWD)/.scripts $@


$(HOME)/.wallpapers:
	ln -s $(PWD)/.wallpapers $@


$(HOME)/.config/hypr:
	ln -s $(PWD)/.config/hypr $@


$(HOME)/.config/dunst:
	ln -s $(PWD)/.config/dunst $@


$(HOME)/.config/pipewire/pipewire.conf.d:
	ln -s $(PWD)/.config/pipewire/pipewire.conf.d $@


$(HOME)/.config/rofi:
	ln -s $(PWD)/.config/rofi $@


$(HOME)/.config/swaylock:
	ln -s $(PWD)/.config/swaylock $@


$(HOME)/.config/viewnior:
	ln -s $(PWD)/.config/viewnior $@


$(HOME)/.config/waybar:
	ln -s $(PWD)/.config/waybar $@


$(HOME)/.config/wlogout:
	ln -s $(PWD)/.config/wlogout $@


.PHONY: deps
deps:
	yay -S hyprland-git polkit-kde-agent dunst grimblast rofi rofi-emoji \
		wl-clipboard wf-recorder wlogout grimblast-git hyprpicker-git \
		hyprpaper-git xdg-desktop-portal-hyprland-git ffmpegthumbnailer \
		tumbler wtype colord imagemagick swaylock-effects qt5-wayland \
		qt6-wayland ripgrep waybar-hyprland-git viewnior \
		noise-suppression-for-voice pavucontrol wlr-randr
