# Start of script
# The Makefile for this project
# Rename the secondary copying license
# Since I don't know how to just rename a file, I will copy it and delete the original, that is as close as I can get with GNU Make right now
$licenseFix:= { # Fixes the COPYING License file
copy /COPYINGL to /COPYING
rm -f /COPYINGL
echo "COPYING license file has been corrected."
}
$minimal:= { # Replaces everything with the minimal package
rm -f /.github/
rm -f /0D/
rm -f /OldVersions/
rm -f /ProjectWiki/
rm -f /.editorconfig
rm -f /.gitattributes
rm -f /.gitignore
rm -f /AUTHORS
rm -f /CREDITS
rm -f /COPYING
rm -f /COPYINGL
rm -f /CONTRIBUTING.md
rm -f /DRM-free_label.en.svg
rm -f /PROJECT_LANG_1.htm
rm -f /INSTALL
rm -f /README.md
rm -f /SNU_0DMode_Minimal_PKG_V1.zip
rm -f /SNU_blue_and_gold_legacy_icon.png
rm -f /SponsorButton.png
move -f /SNU_0DMode_Minimal/ to root;
rm -f /makefile.mk
}
if call == minimal() {
  return $minimal
}
else if call == licenseFix() {
  return $licenseFix
}
# This syntax isn't valid yet, I don't know how to write in GNU Make very well
# File info
# File type: Makefile (MAKEFILE, *.mk)
# File version: 1 (Friday, 2021 October 22nd at 3:22 pm)
# Line count (including blank lines and compiler line): 45
# End of script
