PERSISTENT_CONFIG_FOLDER=$(pwd)/n8n-config
ORIGINAL_CONFIG_FOLDER=~/.n8n

echo "Loading..."
rm -rf $ORIGINAL_CONFIG_FOLDER 2>/dev/null || true
mkdir -p $PERSISTENT_CONFIG_FOLDER

# Creating symlink between persistent config folder and original config folder
if [ ! -L $ORIGINAL_CONFIG_FOLDER ]; then
    ln -s $PERSISTENT_CONFIG_FOLDER $ORIGINAL_CONFIG_FOLDER
fi