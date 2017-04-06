WORKING_DIR=`pwd`
LOCAL_BASH_PROFILE_FILE="bash_profile"
LOCAL_BASH_RC_FILE="bashrc"
BASH_PROFILE_EXTENSION="sh"
LOCAL_BASH_PROFILE_PATH="$WORKING_DIR/$LOCAL_BASH_PROFILE_FILE.$BASH_PROFILE_EXTENSION"
LOCAL_BASH_RC_PATH="$WORKING_DIR/$LOCAL_BASH_RC_FILE.$BASH_PROFILE_EXTENSION"
HOMEUSER_BASH_PROFILE_PATH="$HOME/.$LOCAL_BASH_PROFILE_FILE"
HOMEUSER_BASH_RC_PATH="$HOME/.$LOCAL_BASH_RC_FILE"

echo "bash_profile path: $LOCAL_BASH_PROFILE_PATH"
if [[ -e $HOMEUSER_BASH_PROFILE_PATH ]]; then
	echo "$HOMEUSER_BASH_PROFILE_PATH exists. Deleting."
	rm -f $HOMEUSER_BASH_PROFILE_PATH
fi
echo "Creating ln -s $LOCAL_BASH_PROFILE_PATH $HOMEUSER_BASH_PROFILE_PATH."
ln -s $LOCAL_BASH_PROFILE_PATH $HOMEUSER_BASH_PROFILE_PATH

echo ""

echo "bash_profile path: $LOCAL_BASH_PROFILE_PATH"
echo "bash_profile path: $path $HOMEUSER_BASH_RC_PATH"
if [[ -e $HOMEUSER_BASH_RC_PATH ]]; then
	echo "$HOMEUSER_BASH_RC_PATH exists. Deleting."
	rm -f $HOMEUSER_BASH_RC_PATH
fi
echo "Creating ln -s $LOCAL_BASH_PROFILE_PATH $HOMEUSER_BASH_RC_PATH."
ln -s $LOCAL_BASH_PROFILE_PATH $HOMEUSER_BASH_RC_PATH
