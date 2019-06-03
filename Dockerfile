FROM elixir
ENV NODE_VERSION 10.x
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs
RUN npm i -g npm@latest
RUN mix local.hex --force && \
  mix archive.install hex phx_new --force && \
  mix local.rebar --force
WORKDIR /app