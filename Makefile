VERSION ?= 0.1.0

clean:
	rm -rf ./dist/browser-extension/ ./dist/electron/ ./dist/tauri/

change-version:
	sed -i -e "s/\"version\": \".*\"/\"version\": \"$(VERSION)\"/" public/manifest.json
	sed -i -e "s/\"version\": \".*\"/\"version\": \"$(VERSION)\"/" public/manifest.firefox.json

build: clean change-version
	node build.mjs
