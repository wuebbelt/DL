# Script to download Fastext
URL=https://s3-us-west-1.amazonaws.com/fasttext-vectors
EMBEDDINGS=wiki-news-300d-1M.vec

# download and extract
if [ ! -f $EMBEDDINGS ]; then
  wget $URL/$EMBEDDINGS.zip -P DL/data/embeddings/
  unzip DL/data/embeddings/$EMBEDDINGS.zip
  rm DL/data/embeddings/$EMBEDDINGS.zip
fi
