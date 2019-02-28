FROM mono:5.16


RUN  apt-get update && apt-get install -y mono-xsp \
  && apt-get autoremove -y && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/*


VOLUME /app
WORKDIR /app

EXPOSE 80
CMD [ "xsp4","--port","80","--nonstop"]
