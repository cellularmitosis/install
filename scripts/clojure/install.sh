VERSION=1.10.1.469

install.sh curl
install.sh java
install.sh rlwrap

if which clojure > /dev/null
then
    exit 0
fi

cd ~/Downloads
curl -O https://download.clojure.org/install/linux-install-$VERSION.sh
chmod +x linux-install-$VERSION.sh
sudo ./linux-install-$VERSION.sh
