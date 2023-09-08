FROM node:18-alpine as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
EXPOSE 8080
FROM nginx:alpine
COPY --from=node /app/dist/angular-14-form-validation /usr/share/nginx/html
RUN cd /usr/share/nginx/html/angular-14-form-validation
RUN npm install -g firebase-tools
RUN firebase login
RUN firebase init
Run firebase deploy
