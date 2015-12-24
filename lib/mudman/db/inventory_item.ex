defmodule Mudman.InventoryItem do
  use Ecto.Schema

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
end
