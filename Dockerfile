FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -yq install wget gnupg

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && dpkg -i erlang-solutions_2.0_all.deb
RUN apt-get update

RUN apt-get -yq install esl-erlang elixir

RUN mix local.hex --force && mix local.rebar --force
