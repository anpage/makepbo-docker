FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    liblzo2-2 \
    libvorbis0a \
    libvorbisfile3 \
    libvorbisenc2 \
    libogg0 \
    curl

RUN curl -SL https://armaservices.maverick-applications.com/Products/MikerosDosTools/DownloadFree.aspx?download=depbo-tools-0.6.80-linux-64bit.tgz \
    | tar -xzC /usr --strip 1

WORKDIR /data
VOLUME [ "/data" ]

ENTRYPOINT [ "makepbo" ]
