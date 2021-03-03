# Create a required symbolic link if it doesn't already exist
if [ ! -e /opt/ejabberd-21.01/lib/xmpp-1.5.2/include/fast_xml/include/fxml.hrl ]; then
    echo "Creating required link in included libs"

    cd /opt/ejabberd-21.01/lib/xmpp-1.5.2/include
    ln -s ../../fast_xml fast_xml
fi

# Compile mod_zeropush
erl -pa . -pz ebin -make

