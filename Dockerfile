FROM rocker/ml:3.6.0

ENV RSTUDIO_VERSION 1.3.959
RUN /rocker_scripts/install_rstudio.sh

ENV NB_USER=jovyan

RUN /rocker_scripts/install_python.sh
RUN /rocker_scripts/install_binder.sh

CMD jupyter notebook --ip 0.0.0.0

USER ${NB_USER}

WORKDIR /home/${NB_USER}

