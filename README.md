# Containers in Montevideo: a Multi Source ImageDataset

This repo contains all code asosiated to the building process of the [Clean-dirty containers in Montevideo](https://www.kaggle.com/rodrigolaguna/clean-dirty-containers-in-montevideo) (CDCM) dataset.

Since most of the code is experimental, it is provided as the following jupyter notebooks:

 * `download GSV images.ipynb`: This notebook is used to download images from GSV based on the locations provided by the IM in the file `data/Contenedores_domiciliarios.csv`. You need to provide GSV API credentials to use it.
 * `evaluate garbage container classifier.ipynb`: This notebook allows to train and evaluate a simple classifier to tell if a GSV image contains or not a container on it. It is trained over the [Garbage Containers in Montevideo](https://www.kaggle.com/rodrigolaguna/garbage-containers-images-in-montevideo) dataset.
 * `explore-containers-dataset.ipynb`: This notebook is used to explore the CDCM dataset and to create the meta-data associated with it.
 * `container detection demo.ipynb`:  This notebook allows to process images or videos and to apply a detection model on them to get its containers, draw them on the image and save it. For example, it was used to create video demos [like this]
(https://twitter.com/ro_laguna_/status/1363159539021922308).
 * `classification_baseline/classification-baseline.ipynb`: this notebook contains the training and evaluation process for the baseline over the classification task.
 * `detection_baseline/explore metrics.ipynb`: This notebook allows to explore the etrics stored as a result of the detection baseline model training, and it just show the `detection_baseline/metrics.json` file which contain those metrics. The training and evaluation for the detection baseline is performed in `detection_baseline/run.py` and it does require to download the dataset as in `detection_baseline/get_data.sh`.
 
     
*Note: for obvious reasons, the datasets are not provided here, you need to download to the data folder.*
 

