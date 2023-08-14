#bin/bash

num=$1

dir=""

for i in `seq 1 $num`
do
	dir="$dir../"
done

cd $dir
