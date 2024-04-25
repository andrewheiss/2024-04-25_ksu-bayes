REMOTE_HOST="ath-cloud"
REMOTE_DIR="~/sites/talks.andrewheiss.com/public_html/2024-03-21_be-curious-not-judgmental"
REMOTE_DEST=$REMOTE_HOST:$REMOTE_DIR

echo "Uploading new changes to remote server..."
echo
rsync -crvP --exclude '*_cache' --delete . $REMOTE_DEST
