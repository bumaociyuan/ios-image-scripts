if [ $# -ne 1 ]
then
	echo "Usage: iphone.sh <icon-base-big*big>"
	exit 1
fi
filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"
# echo $extension
# echo $filename

path=output
mkdir $path
echo "Generating iPhone icons."
sips -s format png -z 40 40 $1 --out $path/$filename-20@2x.png
sips -s format png -z 60 60 $1 --out $path/$filename-20@3x.png

sips -s format png -z 58 58 $1 --out $path/$filename-29@2x.png
sips -s format png -z 87 87 $1 --out $path/$filename-29@3x.png

sips -s format png -z 80 80 $1 --out $path/$filename-40@2x.png
sips -s format png -z 120 120 $1 --out $path/$filename-40@3x.png

sips -s format png -z 120 120 $1 --out $path/$filename-60@2x.png
sips -s format png -z 180 180 $1 --out $path/$filename-60@3x.png

