# Nodeイメージの取得
FROM node:16

# ワーキングディレクトリの指定
WORKDIR /app

# package.json, package-lock.jsonをコピー
COPY package*.json ./

# その他のファイルをコピー
COPY . .

# モジュールをインストール
RUN npm install -g npm
RUN npm ci

# ビルド
RUN npm run build

# 起動
CMD node .output/server/index.mjs
