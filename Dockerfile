FROM continuumio/anaconda3
RUN conda install jupyter
RUN conda install jupyterlab
RUN conda install BeautifulSoup4
RUN conda install pandas
RUN conda install scipy
RUN conda install matplotlib
RUN conda install scikit-learn
RUN conda install scrapy
RUN conda install Pillow

RUN pip install ipycanvas
RUN conda install -c conda-forge nbdime
RUN pip install ipythonblocks
RUN conda install -c conda-forge jupyter_contrib_nbextensions
RUN conda install -c conda-forge jupyter_nbextensions_configurator
RUN jupyter contrib nbextension install --user
RUN mkdir /opt/notebooks

WORKDIR /opt/notebooks

RUN mkdir prog
RUN cd prog

WORKDIR /opt/notebooks/prog

CMD ["/bin/bash", "-c", "jupyter notebook --ip='*' --NotebookApp.token='' --NotebookApp.password='' --port=8888 --no-browser --allow-root"]