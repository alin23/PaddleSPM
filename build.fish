#!/usr/bin/env fish

rm -rf ~/Temp/Paddle.xcframework
xcodebuild -create-xcframework -framework ~/Downloads/Paddle.framework -output ~/Temp/Paddle.xcframework
echo '
@interface PADActivateWindowController : NSWindowController <NSTextFieldDelegate> {
NSTextField* _emailTxt;
NSTextField* _licenseTxt;
}
@property (nullable) NSTextField* emailTxt;
@property (nullable) NSTextField* licenseTxt;
- (void)showErrorAlert:(nonnull NSString*)message;
- (void)closeDialog:(PADTriggeredUIType)triggeredUIType internalUICloseReason:(nullable id)reason;
@end
' >> ~/Temp/Paddle.xcframework/macos-arm64_x86_64/Paddle.framework/Headers/Paddle.h
cd Temp; rm Paddle.xcframework.zip; 7z a Paddle.xcframework.zip Paddle.xcframework ; upload -d lowtechguys Paddle.xcframework.zip
set checksum (sha256sum Paddle.xcframework.zip | awk '{print $1}')
cd ~/Projects/macOS/PaddleSPM; sdf 'checksum: "[^"]+"' 'checksum: "'$checksum'"' Package.swift
