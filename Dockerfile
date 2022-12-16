FROM pytorch/pytorch

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

CMD ["bash"]

# docker build -t dl-study .
# docker run -it --rm -p 8888:8888 -v "$(pwd):/usr/src/app" dl-study
# jupyter notebook --allow-root --ip 0.0.0.0 --NotebookApp.token='' --no-browser