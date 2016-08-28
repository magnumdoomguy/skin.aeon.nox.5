DIR=$1
for file in $(find $DIR -name '*.xml')
do
    if [[ -f $file ]]; then
        echo $file
  	xmllint --format $file > $file.formatted; 
		rm $file; 
		mv $file.formatted $file;
    fi
done
