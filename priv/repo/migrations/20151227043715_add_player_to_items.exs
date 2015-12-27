defmodule Mudman.Repo.Migrations.AddPlayerToItems do
  use Ecto.Migration

  def change do
    alter table(:items) do
      add :player_id, references(:players)

      timestamps
    end
  end
end
