# Auth: https://github.com/akhilp1708/
clear
deskiconplay() {
while true; do
	read -p "Would you like to hide/enable desktop icons?  [hide/show]: `echo $'\n> '` " input
	case $input in
		hide)
			defaults write com.apple.finder CreateDesktop false
			killall Finder
			exit 1
			;;
		show)
			defaults write com.apple.finder CreateDesktop true
			killall Finder
			exit 1
			;;
		*)
			echo "Invalid option"
			;;
	esac
done
}
deskiconplay
