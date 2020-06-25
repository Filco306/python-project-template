FROM ##<<INSERT IMAGE NAME>>##

LABEL ##<<

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE ##<< INSERT ALLOCATED PORTS IF ANY>>##

CMD python3 index.py
