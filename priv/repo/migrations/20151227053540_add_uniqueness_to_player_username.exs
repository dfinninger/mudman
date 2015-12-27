defmodule Mudman.Repo.Migrations.AddUniquenessToPlayerUsername do
  use Ecto.Migration

  def change do
    create unique_index(:players, [:username])
  end
end
