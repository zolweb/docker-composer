FROM marmelab/composer-hhvm

COPY config.hdf /etc/hhvm/config.hdf

RUN echo "alias composer='hhvm /usr/local/bin/composer'" >> /root/.bashrc

RUN hhvm /usr/local/bin/composer self-update

