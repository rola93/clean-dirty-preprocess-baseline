cd /data
mkdir -p imgai
cd imgai

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1mdfJoOrO6MeTc3eMEjIDkAKlwK9bUFg6' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1mdfJoOrO6MeTc3eMEjIDkAKlwK9bUFg6" -O clean-dirty-garbage-containers-V6.zip && rm -rf /tmp/cookies.txt

unzip -qq clean-dirty-garbage-containers-V6.zip
# TEST directory
mkdir -p clean-dirty-garbage-containers/test/images

mv clean-dirty-garbage-containers/test/clean/* clean-dirty-garbage-containers/test/images/
mv clean-dirty-garbage-containers/test/dirty/* clean-dirty-garbage-containers/test/images/

mkdir -p clean-dirty-garbage-containers/test/annotations
mv clean-dirty-garbage-containers/annotations/test/* clean-dirty-garbage-containers/test/annotations/

rm -r clean-dirty-garbage-containers/test/clean
rm -r clean-dirty-garbage-containers/test/dirty

mv clean-dirty-garbage-containers/test clean-dirty-garbage-containers/validation

# TRAIN directory
mkdir -p clean-dirty-garbage-containers/train/images

mv clean-dirty-garbage-containers/train/clean/* clean-dirty-garbage-containers/train/images/
mv clean-dirty-garbage-containers/train/dirty/* clean-dirty-garbage-containers/train/images/

mkdir -p clean-dirty-garbage-containers/train/annotations
mv clean-dirty-garbage-containers/annotations/train/* clean-dirty-garbage-containers/train/annotations/

rm -r clean-dirty-garbage-containers/train/clean
rm -r clean-dirty-garbage-containers/train/dirty

wget https://github.com/OlafenwaMoses/ImageAI/releases/download/essential-v4/pretrained-yolov3.h5
