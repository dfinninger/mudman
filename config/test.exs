config :mudman, Mudman.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "mudman_repo",
  username: "mudman",
  password: "mudman",
  hostname: "localhost"

config :mudman,
  max_player_level: 10,
  username_max_length: 64
