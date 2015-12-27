# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :mudman, Mudman.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "mudman_repo",
  username: "mudman",
  password: "mudman",
  hostname: "localhost"

config :mudman,
  max_player_level: 10
