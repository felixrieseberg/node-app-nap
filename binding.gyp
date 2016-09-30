{
  "targets": [{
    "target_name": "AppNap",
    "sources": [
      "AppNap.cc",
      "app_nap.mm"
    ],
    "include_dirs": [
      "<!(node -e \"require('nan')\")"
    ],
    "xcode_settings": {
      "MACOSX_DEPLOYMENT_TARGET": "10.11",
      "OTHER_CPLUSPLUSFLAGS": ["-std=c++11", "-stdlib=libc++", "-mmacosx-version-min=10.10"],
      "OTHER_LDFLAGS": ["-framework Foundation -framework IOKit -framework AppKit"]
    }
  }]
}