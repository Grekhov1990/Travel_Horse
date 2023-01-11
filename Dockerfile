FROM python 

#обозначаем рабочую директурию
WORKDIR /app

COPY ./requirements.txt .
RUN pip install -r requirements.txt

# копируем файлы в /app
COPY . .

# запускаем сервер
CMD ["bash", "-c", "./app-entrypoint.sh"]
