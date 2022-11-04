FROM pmallozzi/devenvs:base-gui-gymphysics-310

WORKDIR /root

RUN mkdir host ide

COPY . /root/host
WORKDIR /root/host/trunk

RUN pip install numpy scipy sklearn plotly
RUN python -m pip install -U matplotlib

RUN python setup.py install