if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sawansingh24/EvaMaria5 /EvaMaria5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria5
fi
cd /EvaMaria5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
