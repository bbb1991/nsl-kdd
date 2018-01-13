FROM jupyter/pyspark-notebook

USER root

COPY NSL-KDD.ipynb /home/$NB_USER/work/
COPY NSL_KDD_Dataset /home/$NB_USER/work/NSL_KDD_Dataset/
COPY NSL-KDD-Copy2.ipynb /home/$NB_USER/work/
COPY NSL-KDD-Copy1.ipynb /home/$NB_USER/work/
COPY model /home/$NB_USER/work/model/

RUN chown -R $NB_USER:users /home/$NB_USER

USER $NB_USER
