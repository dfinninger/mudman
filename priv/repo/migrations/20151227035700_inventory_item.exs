defmodule Mudman.Repo.Migrations.InventoryItem do
  use Ecto.Migration

  def change do
    create table(:inventory_item) do
      add :ident,       :integer
      add :name,        :string
      add :description, :string

      add :level,         :integer
      add :durability,    :integer
      add :attack_damage, :integer
      add :magic_damage,  :integer
      add :charges,       :integer
    end
  end
end
