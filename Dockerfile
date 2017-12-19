FROM wshelley/tifig:latest
MAINTAINER Wayne Shelley

ADD . /batch
RUN chmod a+x /batch/batch-convert.sh
CMD ["/batch/batch-convert.sh"]