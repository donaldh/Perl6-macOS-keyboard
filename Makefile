FILES=\
  Perl6-Keyboards.bundle/Contents/Info.plist \
  Perl6-Keyboards.bundle/Contents/Resources/British-Perl6.icns \
  Perl6-Keyboards.bundle/Contents/Resources/British-Perl6.keylayout \
  Perl6-Keyboards.bundle/Contents/Resources/English.lproj/InfoPlist.strings \
  Perl6-Keyboards.bundle/Contents/version.plist

TARGET=$(HOME)/Library/Keyboard\ Layouts

install:
	for f in $(FILES) ;\
	do \
		mkdir -p $(TARGET)/`dirname $$f` ;\
		cp $$f $(TARGET)/`dirname $$f` ;\
	done
