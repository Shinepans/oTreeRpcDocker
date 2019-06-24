FROM alpine

ADD ./rpc/ opt/rpc

RUN apk -U add --no-cache bash \
                          curl \
                          gcc \
                          nodejs \
                          npm
RUN npm install -g ./opt/rpc
RUN npm install -g ts-node
RUN npm install -g typescript

WORKDIR /opt/rpc
RUN npm install
CMD ["ts-node", "./lib/phases/otree/server/app.ts"]
