#!/bin/sh

curl -L -o cipd "https://chrome-infra-packages.appspot.com/client?platform=linux-amd64&version=latest" \
  && chmod +x cipd \
  && ./cipd install fuchsia/sdk/linux-amd64 84ba602e150fd736486d0907dca12cd4870aabbe -root sdk \
  && ./cipd install fuchsia/clang/linux-amd64 git_revision:70a812b6f9a686e288468cc448144f910e361939 --root clang
