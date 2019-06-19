FROM keymetrics/pm2:8

ADD ./rpc ./opt/rpc/

RUN npm install ./rpc
RUN npm install -g ts-node
RUN npm install -g typescript

CMD ["ts-node", "rpc/lib/phases/otree/server/app.ts"]

