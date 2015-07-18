
PROJECT = SaguaroKeys
PLATFORM = 'platform=iOS Simulator,name=iPad Air 2,OS=9.0'

all:
	@make test

clean:
	xcodebuild -workspace $(PROJECT).xcworkspace -scheme "$(PROJECT)" clean

test:
	xcodebuild -workspace $(PROJECT).xcworkspace -scheme "$(PROJECT)" -sdk iphonesimulator -destination $(PLATFORM) test | xcpretty -c

build:
	xcodebuild -workspace $(PROJECT).xcworkspace -scheme "$(PROJECT)" -sdk iphonesimulator -destination $(PLATFORM) build

watch:
	@( ./watcher.js )

.PHONY:	test
.PHONY:	clean

