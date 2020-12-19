rm happyChannukah.sh
mkdir happyChannukah
cd happyChannukah
curl https://media3.giphy.com/media/3o6ZtkEchxeIh8mad2/giphy.gif --output happy.gif 
sleep 1
xdg-open happy.gif
sleep 1
echo "Happy Channukah!!!"
echo "check out https://github.com/SomeResources/SomeResources.github.io/blob/master/scripts/badUSB.ino for info on how to program your gift..."
xdg-open HappyChannukah
echo press any key to exit...
read -n1 ok
cd ..
rm -r happyChannukah


