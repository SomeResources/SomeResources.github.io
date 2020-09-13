html="<!DOCTYPE html>
<html>
<body>

<h1>Music</h1>
"


for i in *.m4a; do
link=`echo $i | sed 's/ /%20/g'`
html="$html 

<a href=\"https://SomeResources.github.io/$link\">$i</a>

"
done

html="$html 
</body>
</html>
"

echo $html > music.html

