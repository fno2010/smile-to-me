FROM visionai/clouddream
WORKDIR /opt/caffe
RUN mkdir /opt/caffe/models/emotion-classfication
ADD models/deploy.txt /opt/caffe/models/emotion-classfication/deploy.prototxt
ADD models/EmotiW_VGG_S.caffemodel /opt/caffe/models/emotion-classfication/EmotiW_VGG_S.caffemodel
ADD models/mean.binaryproto /opt/caffe/models/emotion-classfication/mean.binaryproto
ADD data/synset_words.txt /opt/caffe/data/emotion-classfication/synset_words.txt
RUN pip install -r examples/web_demo/requirements.txt
RUN pip install -U flask-cors
EXPOSE 5000
ADD app.py /opt/caffe/examples/web_demo/app.py
CMD python examples/web_demo/app.py
