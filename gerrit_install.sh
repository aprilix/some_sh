sudo apt -y -q update
sudo apt -y install git
sudo apt -y install default-jdk

dl=~/Downloads
if [ ! -d "$dl" ]; then
   mkdir ~/Downloads
fi
cd ~/Downloads


wget https://gerrit-releases.storage.googleapis.com/gerrit-2.14.6.war

java -jar gerrit-2.14.6.war init --batch -d ~/gerrit

git config -f ~/gerrit/etc/gerrit.config gerrit.canonicalWebUrl