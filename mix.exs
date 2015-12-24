defmodule Mudman.Mixfile do
  use Mix.Project

  def project do
    [app: :mudman,
     version: "0.0.1",
     elixir: "~> 1.1",
     escript: escript_config,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [
        :logger,
        :postgrex,
        :ecto
      ],
      mod: { Mudman, [] }
    ]
  end

  defp escript_config do
    [main_module: Mudman]
  end

  defp deps do
    [
      {:poison, "~> 1.5"},
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 1.1"}
    ]
  end
end
