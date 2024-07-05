FROM litestream/litestream

RUN mkdir -p /data
COPY . .

VOLUME /workspace/data:/data
VOLUME /workspace/litestream.yml:/etc/litestream.yml

ENV LITESTREAM_ACCESS_KEY_ID=$LITESTREAM_ACCESS_KEY_ID #S3 Access Key
ENV LITESTREAM_SECRET_ACCESS_KEY=$LITESTREAM_SECRET_ACCESS_KEY #S3 Secret Key

EXPOSE 8080

CMD [ "./run.sh" ]
