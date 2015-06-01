if [ $# -ne 1 ]
then
	echo "Usage: iphone.sh <icon-base-big*big>"
	exit 1
fi

echo "Generating iPhone icons."
sips -s format png -z 29 29 $1 --out Icon-Small.png
sips -s format png -z 58 58 $1 --out Icon-Small@2x.png
sips -s format png -z 87 87 $1 --out Icon-Small@3x.png

sips -s format png -z 80 80 $1 --out Icon-40@2x.png
sips -s format png -z 120 120 $1 --out Icon-40@3x.png


sips -s format png -z 60 60 $1 --out Icon-60.png
sips -s format png -z 120 120 $1 --out Icon-60@2x.png
sips -s format png -z 180 180 $1 --out Icon-60@3x.png

sips -s format png -z 57 57 $1 --out Icon.png
sips -s format png -z 114 114 $1 --out Icon@2x.png

# sips -s format png -z 72 72 $1 --out Icon-72.png
# sips -s format png -z 144 144 $1 --out Icon-72@2x.png


# sips -s format png -z 76 76 $1 --out Icon-76.png

# sips -s format png -z 120 120 $1 --out Icon-120.png

# sips -s format png -z 152 152 $1 --out Icon-152.png



sips -s format png -z 1024 1024 $1 --out iTunesArtwork




# sips -s format png -z 29 22 $2 --out Icon-doc.png
# sips -s format png -z 58 44 $2 --out Icon-doc@2x.png

# echo "Generating iPhone launch images."
# sips -s format png -z 480 320 $3 --out Default.png
# sips -s format png -z 960 640 $3 --out Default@2x.png
# sips -s format png -z 1136 640 $4 --out Default-568h@2x.png
