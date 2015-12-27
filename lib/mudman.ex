defmodule Mudman do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Mudman.Repo, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Mudman.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def main(_args) do
    IO.puts "Hello, world!"
  end
end
