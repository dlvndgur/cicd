# Node.js 기반 Docker 이미지
FROM node:20-alpine

# 작업 디렉토리 설정
WORKDIR /app

# 모든 파일 복사
COPY . .

# 의존성 설치
RUN npm install

# 컨테이너에서 사용할 포트 노출
EXPOSE 3000

# 서버 실행
CMD ["node", "index.js"]
