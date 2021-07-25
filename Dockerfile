FROM jupyter/scipy-notebook:0ce64578df46

RUN pip install torch==1.9.0+cpu -f https://download.pytorch.org/whl/torch_stable.html

RUN conda install -c conda-forge category_encoders

ENV PYTHONPATH "${PYTHONPATH}:/home/jovyan/work"

RUN echo "export PYTHONPATH=/home/jovyan/work" >> ~/.bashrc

WORKDIR /home/jovyan/work