FROM continuumio/anaconda3:5.3.0
MAINTAINER phil schatzmann
RUN apt-get update && apt-get install -y texlive-xetex bzip2 git curl wget && apt-get clean
RUN conda update -y conda && conda update -y anaconda 
RUN conda install -y -c conda-forge 'python>=3' nodejs pandas maven py4j requests jupyterlab beakerx
RUN conda install -c anaconda openjdk
RUN npm install --save-dev webpack
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install beakerx-jupyterlab

# Working directory
RUN mkdir /home/beakerx
WORKDIR /home/beakerx
VOLUME /home/beakerx

EXPOSE 8888 
CMD ["jupyter", "lab", "--no-browser", "--allow-root", "--ip=0.0.0.0" ]