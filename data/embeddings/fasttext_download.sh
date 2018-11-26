# Script to download Fastext
URL=https://s3-us-west-1.amazonaws.com/fasttext-vectors
EMBEDDINGS=wiki-news-300d-1M.vec

# download and extract
if [ ! -f $EMBEDDINGS ]; then
  wget $URL/$EMBEDDINGS.zip -P DL/data/embeddings/
  unzip $EMBEDDINGS.zip
  rm $EMBEDDINGS.zip
fi
