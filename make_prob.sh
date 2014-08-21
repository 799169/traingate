for i in $*; do
	mkdir $i
	sed -e s/\\\$NAME\\\$/$i/g template.cpp > $i/$i.cpp
	ln -s ../Makefile $i/Makefile
done
