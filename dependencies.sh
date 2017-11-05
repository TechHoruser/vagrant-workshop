source /vagrant/config/main.sh

# Install git
if ! which git; then
	apt-get -y install git
fi

# Install vim
if ! which vim; then
	apt-get -y install vim
fi

# Install terminal
if ! which zsh; then
	apt-get -y install zsh
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

rm ~/.ssh > /dev/null 2>&1

# Generate par keys
if [ ! -f /root/.ssh/id_rsa ]; then
	ssh-keygen -t rsa -b 4096 -f "/root/.ssh/id_rsa" > /dev/null 2>&1

	ssh-keygen -R bitbucket.org
	ssh-keyscan -H bitbucket.org >> /root/.ssh/known_hosts

	cat /root/.ssh/id_rsa.pub
fi
