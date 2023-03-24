# How to use

docker imageの作成

```
$docker build -t nuxt-docker .
```

imageが作成されているかの確認

```
$docker images
```

docker run

```
$docker run -d -p 3000:3000 nuxt-docker
```

コンテナが起動しているかの確認

```
$docker ps
```

localhost:3000 にアクセスする


