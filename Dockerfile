ARG R_VERSION=3.6.3

FROM rocker/r-ver:${R_VERSION} as minimal

WORKDIR /renv

RUN Rscript -e 'install.packages("renv")'

CMD ["R"]

# -----------------------

FROM minimal as dev

RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev procps python3-pip

RUN pip3 install radian

RUN Rscript -e 'install.packages("languageserver", Ncpus = 16)'

CMD ["radian"]
