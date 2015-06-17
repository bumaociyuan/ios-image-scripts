if [ $# -ne 1 ]
then
	echo "Usage: iphone.sh <icon-base-big*big>"
	exit 1
fi

path=output
mkdir $path
echo "Generating iPhone icons."

sips -s format png -z 76 76 $1 --out $path/Icon-76.png
sips -s format png -z 152 152 $1 --out $path/Icon-76@2x.png
