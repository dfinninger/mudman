defmodule Mudman do
  use Application

  def start(_type, args) do
    { :ok, _pid } = Mudman.Supervisor.start_link(args)
  end

  def main(_args) do
    IO.puts "Hello, world!"
  end
end
