# Используем легковесный nginx для раздачи статики
FROM nginx:alpine

# Копируем все файлы проекта в папку, которую nginx раздает по умолчанию
COPY . /usr/share/nginx/html

# Опционально: можно заменить конфиг nginx, если нужно (например, для SPA)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Порт, который будет слушать контейнер
EXPOSE 80