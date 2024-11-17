#!/usr/bin/env bash

echo ""
echo ""
echo "execute mvpose on $1"
echo ""
echo ""

VID_DIR="$1/videos"
CAM_DIR="$1/cameras"
POSE_DIR="$1/poses"
OPENPOSE_DIR="$PWD/openpose"

docker run\
  --gpus all\
  --privileged\
  --name='mv3dpose_exec'\
  --rm\
  -it\
  -v "$PWD":/home/user/mv3dpose\
  -v "$1":/home/user/dataset\
  jutanke/mv3dpose\
  bash
