FROM python:3.9-buster

WORKDIR /usr/src/app

RUN apt-get update -yq && apt-get upgrade -yq && \
    apt-get install -yq octave liboctave-dev
    #mkoctfile read_kiwi_iq_wav.cc

RUN pip install numpy samplerate



# python kiwirecorder.py -s sdr.ironstonerange.com -p 8073 -m iq --kiwi-wav
# python kiwiwfrecorder.py -s sdr.ironstonerange.com -p 8073 --tlimit 20