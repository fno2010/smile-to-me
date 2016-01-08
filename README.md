Smile to me
===========

Author: Jensen Zhang (jingxuan.n.zhang@gmail.com)

Collaborators: Sihan Chen, Lei Wang, Xin Liu

## Introduction

This is a simple demo about face recognition using deep learning and cloud computing.

You can try to smile to your camera and wait the feedback from system.

Enjoy yourself!

Click [here](#) to enter the demo.

## Overview

//TODO: the overview of **smile-to-me**.

## Data Preparation

You need to pre-download some model data to run the caffe back end.

Downlaod caffemodel file from one of following urls to replace `back/models/EmotiW_VGG_S.caffemodel`.

- <http://pan.baidu.com/s/1mhkmJPI>
- <https://dl.dropboxusercontent.com/u/38822310/demodir/VGG_S_rgb/EmotiW_VGG_S.caffemodel>

Download mean file from one of following urls to replace `back/models/mean.binaryproto`.

- <http://pan.baidu.com/s/1c1vYuVe>
- <https://dl.dropboxusercontent.com/u/38822310/demodir/VGG_S_rgb/mean.binaryproto>

## Quickly deploy

Follow the instructions to deploy the demo system in your own platform:

``` bash
cd vagrant
vagrant init
vagrant up
```

You can also deploy the demo by docker.

``` bash
cd back
docker build -t caffe_emotiw .
docker run -p 5000:5000 caffe_emotiw

cd ../front
npm install
npm start
```

And then, you can go to `http://127.0.0.1:8080` in your web browser to view the demo.

## Build the demo from source code

//TODO: instructions for building.
