# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-nayttamo

CONFIG += sailfishapp

SOURCES += src/harbour-nayttamo.cpp

OTHER_FILES += \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/harbour-nayttamo.changes.in \
    rpm/harbour-nayttamo.spec \
    rpm/harbour-nayttamo.yaml \
    translations/*.ts \
    harbour-nayttamo.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/harbour-nayttamo-de.ts

DISTFILES += \
    qml/js/http.js \
    qml/js/promise.js \
    qml/js/timeout.js \
    qml/js/yleApi.js \
    qml/pages/CategoriesPage.qml \
    qml/pages/ProgramsPage.qml \
    qml/pages/PlayerPage.qml \
    qml/pages/SearchPage.qml \
    qml/js/crypto.js \
    qml/pages/ProgramOverviewPage.qml \
    qml/main.qml

DEFINES += APP_VERSION=\\\"$$VERSION\\\"
DEFINES += APP_BUILDNUM=\\\"$$RELEASE\\\"

DOTENV = "$$cat($$PWD/.env)"
for(var, $$list($$DOTENV)) {
    DEFINES += $$var
    message($$var)
}

message($$DEFINES)

#APP_ID = $$(APP_ID)
#message("APP_ID = $$APP_ID")

#APP_KEY = $$(APP_KEY)
#message("APP_KEY = $$APP_KEY")

#DECRYPT_KEY = $$(DECRYPT_KEY)
#message("DECRYPT_KEY = $$DECRYPT_KEY")

#DEFINES += APP_ID
#DEFINES += APP_KEY
#DEFINES += DECRYPT_KEY

#equals( APP_ID, "" ) {
#    error( "APP_ID not defined" )
#}

#equals( APP_KEY, "" ) {
#    error( "APP_KEY not defined" )
#}

#equals( DECRYPT_KEY, "" ) {
#    error( "DECRYPT_KEY not defined" )
#}
