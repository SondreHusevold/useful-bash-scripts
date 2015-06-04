#!/bin/bash
#
# Originally made by onodera - onodera at openmailbox dot org
# Upload files to uguu/pomf.se
# OS X only. Requires terminal-notifier.

# TODO: -s and * don't work togheter (as expected), give an error or something

for flag in "$@"; do
	case "$flag" in
		-h|--help)
			echo "-p         permanent/pomf upload"
			echo "file/url   upload file/url"
			exit
			;;
		-p)
			pomf=true
			;;
		*)
			fileurl=true
			fileurllocation="$flag"
			;;
	esac
done

if [[ "$fileurl" == true ]]; then
	if [[ "$flag" =~ ^http ]]; then
		type="$(echo "$fileurllocation" | rev | cut -d "." -f 1 | rev)"
		file="/tmp/file.$type"

		wget --quiet "$fileurllocation" -O "/tmp/file.$type"
	else
		if [[ ! -f "$fileurllocation" ]]; then
			echo "File not found."
			exit
		else
			file="$fileurllocation"
		fi
	fi
	word=file
fi

if [[ "$pomf" == true ]]; then
	url="$(curl --silent -F files[]="@$file" "http://pomf.se/upload.php?output=gyazo")"
	echo "Pomfed $word: $url" | terminal-notifier
else
	url="$(curl --silent -F file="@$file" "http://uguu.se/api.php?d=upload")"
	echo "Uguud $word: $url" | terminal-notifier
fi

echo "$url" | pbcopy
echo "$url" | pbcopy

echo "$url"