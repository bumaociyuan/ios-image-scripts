if [ $# -ne 1 ]
then
	echo "Usage: iphone.sh <icon-base-big*big>"
	exit 1
fi

path=output
mkdir $path
echo "Generating iPhone icons."
sips -s format png -z 29 29 $1 --out $path/Icon-Small.png
sips -s format png -z 58 58 $1 --out $path/Icon-Small@2x.png
sips -s format png -z 87 87 $1 --out $path/Icon-Small@3x.png

sips -s format png -z 80 80 $1 --out $path/Icon-40@2x.png
sips -s format png -z 120 120 $1 --out $path/Icon-40@3x.png


sips -s format png -z 60 60 $1 --out $path/Icon-60.png
sips -s format png -z 120 120 $1 --out $path/Icon-60@2x.png
sips -s format png -z 180 180 $1 --out $path/Icon-60@3x.png

sips -s format png -z 57 57 $1 --out $path/Icon.png
sips -s format png -z 114 114 $1 --out $path/Icon@2x.png

sips -s format png -z 1024 1024 $1 --out $path/iTunesArtwork
