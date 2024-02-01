install() {
	chmod +x nyaafetch
	mv nyaafetch "$GITMAN_BIN"/nyaafetch
}

uninstall() {
	rm "$GITMAN_BIN"/nyaafetch
}

update() {
	install
}

if [ $1 = "install" ] ; then 
	install
elif [ $1 = "uninstall" ] ; then
	uninstall
elif [ $1 = "update" ] ; then
	update
else
	echo unknown option
	exit 1
fi
