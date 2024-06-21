#!/bin/bash
if [ ! -d "$WORKSPACE_DIR/test-instance2" ]; then
  "$DIRECTORY not found -> FAIL" > check.log
  exit 1
fi

pip install GPUtil
python "$WORKSPACE_DIR/test-instance/check_instance.py"
