rm happyChannukah.sh
mkdir happyChannukah
cd happyChannukah
curl https://media3.giphy.com/media/3o6ZtkEchxeIh8mad2/giphy.gif --output happy.gif 
sleep 1
xdg-open happy.gif
sleep 1
echo "Happy Channukah!!!" > HappyChannukah
xdg-open HappyChannukah
echo press any key to exit...
read -n1 ok
cd ..
rm -r happyChannukah


