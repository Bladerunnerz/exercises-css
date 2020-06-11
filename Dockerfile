FROM melodyn/base-image:latest

WORKDIR /exercises-css

RUN npm i -g htmlhint
RUN npm i -g jsdom jsdom-global
RUN npm i -g chai chai-dom
RUN npm i -g @testing-library/dom
RUN npm i -g @github/query-selector
RUN npm i -g stylelint stylelint-config-standard

COPY --from=melodyn/base-image:latest /tmp/basics/common/* ./
COPY . .

ENV NODE_PATH /usr/local/lib/node_modules:/exercises-css/src

