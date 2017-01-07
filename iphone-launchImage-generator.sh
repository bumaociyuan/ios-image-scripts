if [ $# -ne 1 ]
then
	echo "Usage: iphone.sh <icon-base-big*big>"
	exit 1
fi

path=launchImageoutput
mkdir $path
echo "Generating iPhone launch image."
echo $1
sips -z 960 960 $1 --out $path/launch@2x.png
sips -z 750 1334 $1 --out $path/launch@retina4.7.png
sips -z 640 1136 $1 --out $path/launch@retina4.png
sips -z 1242 2208 $1 --out $path/launch@retina5.5.png
