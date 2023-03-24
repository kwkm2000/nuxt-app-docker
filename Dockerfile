# Nodeイメージの取得
FROM node:18-alpine3.16

# ワーキングディレクトリの指定
WORKDIR /app

# package.json, package-lock.jsonをコピー
COPY package*.json ./

RUN ls -a

# モジュールをインストール
RUN npm install

# その他のファイルをコピー
COPY . .

RUN npm list vue

# ビルド
RUN npm run build

# ホスト
ENV HOST 0.0.0.0

# ポート
EXPOSE 3000

# 起動
CMD ["npm", "run", "start"]