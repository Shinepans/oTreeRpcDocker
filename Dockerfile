FROM python:3-alpine

ADD ./rpc ./opt/rpc/

RUN npm install ./rpc
RUN npm install -g ts-node
RUN npm install -g typescript

CMD ["ts-node", "opt/rpc/lib/phases/otree/server/app.ts"]

