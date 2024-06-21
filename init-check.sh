#!/bin/bash
# Verification de configuration : GPU, acces au depot git...

# prerequis : configurer le depot Git contenant le script 'check_instance.py' (depot test-instance)
# "test-instance" correspond au depot Git (a adapter)
OUTPUT_DIR="$WORKSPACE_DIR/test-instance"
if [ ! -d "$OUTPUT_DIR" ]; then
  echo "$OUTPUT_DIR not found -> FAIL" > check.log
  exit 1
fi

pip install GPUtil
python "$OUTPUT_DIR/check_instance.py"
