#!/bin/bash
pip install -r "$WORKSPACE_DIR/test-instance/requirements.txt"
python -m nltk.downloader punkt
python -m spacy download en_core_web_sm

