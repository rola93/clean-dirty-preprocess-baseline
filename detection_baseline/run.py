import os
ann_dir = '/data/imgai/clean-dirty-garbage-containers/train/annotations/'
img_dir = '/data/imgai/clean-dirty-garbage-containers/train/images/'
corpus = '/data/imgai/clean-dirty-garbage-containers'
pretrained = '/data/imgai/pretrained-yolov3.h5'

assert os.path.isdir(ann_dir)
assert os.path.isdir(img_dir)
assert os.path.isfile(pretrained)

from imageai.Detection.Custom import DetectionModelTrainer

# Train the model
trainer = DetectionModelTrainer()
trainer.setModelTypeAsYOLOv3()

trainer.setDataDirectory(data_directory=corpus)
trainer.setTrainConfig(object_names_array=["container"], batch_size=8,
                       num_experiments=200, train_from_pretrained_model=pretrained)
trainer.trainModel()

# Evaluate the model
from imageai.Detection.Custom import DetectionModelTrainer

trainer = DetectionModelTrainer()
trainer.setModelTypeAsYOLOv3()
trainer.setDataDirectory(data_directory=corpus)
metrics = trainer.evaluateModel(model_path=corpus+"/models", 
                                json_path=corpus+"/json/detection_config.json", 
                                iou_threshold=0.5, object_threshold=0.3, nms_threshold=0.5)

import json
with open('metrics.json', 'w') as f:
    json.dump({'metrics': metrics}, f)

