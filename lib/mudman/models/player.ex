defmodule Mudman.Player do
  use     Ecto.Schema
  import  Ecto.Changeset

  schema "players" do
    field :username,  :string
    field :level,     :integer

    field :health,      :integer
    field :base_attack, :integer
    field :base_magic,  :integer

    has_many :items, Mudman.Item
  end

  @required_fields ~w(username level health base_attack base_magic)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:username, max: Application.get_env(:mudman, :username_max_length))
    |> unique_constraint(:username)
    |> validate_inclusion(:level, 1..Application.get_env(:mudman, :max_player_level))
    |> validate_number(:health, greater_than: 0)
    |> validate_number(:base_attack, greater_than: 0)
    |> validate_number(:base_magick, greater_than: 0)
  end
end
