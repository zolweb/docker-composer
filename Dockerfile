FROM marmelab/composer-hhvm

COPY config.hdf /etc/hhvm/config.hdf

RUN groupadd -g 1000 user \
	&& useradd --create-home -d /home/user -g user -u 1000 user

RUN echo "alias composer='hhvm /usr/local/bin/composer'" >> /home/user/.bashrc

RUN hhvm /usr/local/bin/composer self-update

USER user
ENV HOME /home/user
