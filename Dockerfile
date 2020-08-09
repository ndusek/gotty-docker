FROM centos:7
COPY ./gotty /gotty
EXPOSE 8080
RUN useradd -m user
USER user
RUN echo "cd ~/" >> ~/.bashrc
CMD /gotty -w /bin/bash
