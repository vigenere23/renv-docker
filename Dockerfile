ARG STAGE=dev

FROM rocker/r-ver:3.6.3 as minimal

WORKDIR /renv

RUN Rscript -e 'install.packages("renv")'

CMD ["R"]

# -------------------

FROM minimal as dev

RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev procps python3-pip
RUN pip3 install radian

RUN Rscript -e 'install.packages("languageserver", Ncpus = 16)'

CMD ["radian"]

# -------------------

FROM ${STAGE} as image
