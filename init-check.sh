#!/bin/bash
OUTPUT_DIR="$WORKSPACE_DIR/test-instance2"
if [ ! -d "$OUTPUT_DIR" ]; then
  echo "$OUTPUT_DIR not found -> FAIL" > check.log
  exit 1
fi

pip install GPUtil
python "$OUTPUT_DIR/check_instance.py"
