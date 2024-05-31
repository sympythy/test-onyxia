#!/bin/bash
pip install -r "$GIT_REPOSITORY/requirements.txt"
python -m nltk.downloader punkt
python -m spacy download en_core_web_sm

