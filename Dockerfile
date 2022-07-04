FROM offub/bot:slim-buster

#clonning repo 
RUN git clone https://github.com/offub/bot.git /root/bot
#working directory 
WORKDIR /root/bot

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","bot"]
