# Ambil base image ubuntu
FROM ubuntu:20.04
# Tambahkan email maintainer optional saja
LABEL maintainer="name.fandi07@proton.me" 
# Lakukan pertintah linux apt update
RUN apt update
# Buat folder /home/app dan masuk ke folder tsb
WORKDIR /home/app
# Lakukan perintah echo lalu save ke halo.txt
RUN echo "Halo ini dari container" > halo.txt
# Copy dari folder computer ke folder docker
COPY folder4 /home/app
# Lakukan perintah ketika image dijalankan/containerization
CMD ["echo","Halo dari container"]
