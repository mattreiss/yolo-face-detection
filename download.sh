#/bin/sh

# Kaggle API credentials
# You need to set your Kaggle API credentials here.
# KAGGLE_USERNAME=""
# KAGGLE_KEY=""

# datasets
FACE_DETECTION_DATASET="fareselmenshawii/face-detection-dataset"
# https://www.kaggle.com/datasets/fareselmenshawii/face-detection-dataset

# create virtual environment
rm -rf /tmp/kaggle_venv
python3 -m venv /tmp/kaggle_venv
source /tmp/kaggle_venv/bin/activate

# install kaggle cli
pip install kaggle
mkdir -p ~/.kaggle
echo "{\
    \"username\": \"$KAGGLE_USERNAME\",\
    \"key\": \"$KAGGLE_KEY\"\
}" > ~/.kaggle/kaggle.json
chmod 600 ~/.kaggle/kaggle.json

# download dataset
kaggle datasets download -d $FACE_DETECTION_DATASET -p /tmp

# unzip dataset
mkdir -p ./datasets
unzip /tmp/face-detection-dataset.zip -d ./datasets/face_dataset
