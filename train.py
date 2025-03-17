from ultralytics import YOLO
import torch

# Check if CUDA is available
device = "cuda" if torch.cuda.is_available() else "cpu"

# Load the YOLO model
model = YOLO("yolo11n.pt").to(device)

# Train the model on your custom dataset
model.train(data='dataset.yaml', epochs=300, imgsz=240, batch=64, device=device, workers=8)

