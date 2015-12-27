defmodule Mudman.Repo.Migrations.Player do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :username, :string
      add :level,    :integer

      add :health,      :integer
      add :base_attack, :integer
      add :base_magic,  :integer
    end
  end
end
