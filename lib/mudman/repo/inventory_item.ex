defmodule Mudman.InventoryItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "inventory_item" do
    field :ident,       :integer
    field :name,        :string
    field :description, :string

    field :level,         :integer, default: 0
    field :durability,    :integer, default: 100
    field :attack_damage, :integer, default: 0
    field :magic_damage,  :integer, default: 0
    field :charges,       :integer, default: 0
  end

  @required_fields ~w(ident name description)
  @optional_fields ~w(level durability attack_damage magic_damage charges)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_inclusion(:level, 1..Application.get_env(:mudman, :max_player_level))
    |> validate_inclusion(:durability, 0..100)
    |> validate_number(:attack_damage, greater_than: 0)
    |> validate_number(:magic_damage, greater_than: 0)
    |> validate_number(:charges, greater_than: 0)
  end
end
