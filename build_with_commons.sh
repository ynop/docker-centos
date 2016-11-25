image_name=$1
user=$2

image_desc=$image_name

if [ $# -ge 1 ]; then
    image_desc=$user/$image_name
fi

cd $image_name

cp -R ../commons commons

docker build -t $image_desc .

rm -Rf commons
cd ..