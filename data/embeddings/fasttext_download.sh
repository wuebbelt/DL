# Script to download Fastext
URL=https://dl.fbaipublicfiles.com/fasttext/vectors-english
EMBEDDINGS=wiki-news-300d-1M.vec

# download and extract
if [ ! -f $EMBEDDINGS ]; then
  wget $URL/$EMBEDDINGS.zip -P DL/data/embeddings/
  unzip DL/data/embeddings/$EMBEDDINGS.zip -d DL/data/embeddings
  rm DL/data/embeddings/$EMBEDDINGS.zip
fi
