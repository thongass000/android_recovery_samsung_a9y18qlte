# Universal device tree of Samsung Galaxy A9 2018 (SM-A920F) for building custom recovery

## twrp-11.0
Manifest: https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/tree/twrp-11

## How to compile
```sh
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_a9y18qlte-eng
make recoveryimage
```
