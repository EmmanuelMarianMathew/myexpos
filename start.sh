#!/bin/bash
curr=$(pwd)
cd $HOME/myexpos/spl/spl_progs/
file=$(ls *.spl)
cd ..
for i in $file
do
	./spl spl_progs/$i
	echo $i
done
echo "Compiled spl programs."
cd ../expl/expl_progs/
file=$(ls *.expl)
cd ..
for i in $file
do
	./expl expl_progs/$i
	echo $i
done
echo "Compiled expl programs"
cd ..
cd xfs-interface/
./xfs-interface fdisk
./xfs-interface run run_c.txt
cd $curr
echo "All files loaded."
