#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

#include <nan.h>
#include "app_nap.h"

// See https://developer.apple.com/reference/foundation/nsactivityoptions?language=objc
// for a full list of options
NAN_METHOD(DisableAppNap) {
  if (info.Length() < 1) {
    Nan::ThrowTypeError("No reason given");
    return;
  }

  if (!info[0]->IsString()) {
    Nan::ThrowTypeError("Wrong arguments");
    return;
  }

  Nan::Utf8String reason(info[0]);

  // Disable app nap, if the api even exists
  if ([[NSProcessInfo processInfo] respondsToSelector:@selector(beginActivityWithOptions:reason:)])
  {
    uint64_t options = (0x00FFFFFFULL);
    id activity = [[NSProcessInfo processInfo] beginActivityWithOptions:options reason:[NSString stringWithUTF8String:*reason]];
    info.GetReturnValue().Set(true);
  } else {
    info.GetReturnValue().Set(false);
  }
}
