rm index.txt
touch index.txt


for i in *.m4a; do
link=`echo $i | sed 's/ /%20/g'`
echo "https://SomeResources.github.io/songs/$link" >> index.txt
done



