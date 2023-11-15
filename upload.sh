::# Type the command "cmd < upload.sh"
::# Preliminary Checks:
::# 1. Ensure "gcloud auth login" is already done


gsutil -m rsync -r css gs://www.shingo.institute/css
echo "Styles Directory Synced"

gsutil -m rsync -r images gs://www.shingo.institute/images
echo "Images Directory Synced"

gsutil -m rsync ./ gs://www.shingo.institute
echo "Base Directory Synced"