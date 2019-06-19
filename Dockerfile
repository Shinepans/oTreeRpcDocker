FROM keymetrics/pm2:8

WORKDIR   /home/src

COPY rpc rpc/

RUN npm install ./rpc
RUN npm install -g ts-node
RUN npm install -g typescript

CMD ["ts-node", "rpc/lib/phases/otree/server/app.ts"]

