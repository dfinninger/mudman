# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :my_app, Mudman.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "mudman",
  username: "mudman",
  password: "mudman",
  hostname: "localhost"
