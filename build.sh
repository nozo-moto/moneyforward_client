#!/bin/sh

APP="mf_client.app"
mkdir -p $APP/Contents/{MacOS,Resources}
go build -o $APP/Contents/MacOS/mf_client
cat > $APP/Contents/Info.plist << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>mf_client</string>
    <key>CFBundleIconFile</key>
    <string>icon.icns</string>
    <key>CFBundleIdentifier</key>
    <string>net.shwld.mf_client</string>
</dict>
</plist>
EOF
cp icon.icns $APP/Contents/Resources/icon.icns
find $APP

