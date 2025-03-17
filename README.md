# yolo-face-detection

## Download the dataset
In `download.sh` set the Kaggle Api credentials
```
KAGGLE_USERNAME="your username"
KAGGLE_KEY="your api key"
```
Run download.sh
```
./download.sh
```

## Setup a virtual environment
```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Start training
```
python3 train.py
```
Results will be stored in `runs/detect/train`
