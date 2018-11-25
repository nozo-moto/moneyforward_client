build:
	bash ./build.sh

install:
	bash ./build.sh
	cp -r ./mf_client.app /Applications
	chmod o+x /Applications/mf_client.app
