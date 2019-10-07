# DevOps-Course
⁃ Họ và tên: Đoàn Ngọc Đạt

⁃ Account: DatDN4

⁃ Đơn vị: FSU1.BU91


# Implement steps
1. Build image:

```console
docker build -t root_war:1.0 . or docker build -t root_war .
```
  
2. Run image:

```console
  docker run -p 8080:8080 root_war:1.0 or docker run -p 8080:8080 root_war
```

3. Create network:

```console
  docker network create --subnet 10.10.20.0/24 --driver bridge DevOps_Bridge_Network
```

4. Run image on DevOps_Bridge_Network:

```console
  docker run -p 8080:8080 -d -it --network=DevOps_Bridge_Network --name=devops root_war
```