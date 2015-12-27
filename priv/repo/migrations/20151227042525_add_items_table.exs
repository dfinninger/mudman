defmodule Mudman.Repo.Migrations.Item do
  use Ecto.Migration

  def change do
    create table(:items) do
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
