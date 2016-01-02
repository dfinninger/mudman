ExUnit.start

defmodule PlayerTest do
  alias Mudman.Player
  use ExUnit.Case, async: true

  test "changeset is invalid if username is too long" do
    changeset = Player.changeset(%Player{}, %{
      username: "this is more than 64 chars. this is more than 64 chars. this is more than 64 chars.",
      level: 1,
      health: 1,
      base_attack: 1,
      base_magic: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if player level too high" do
    changeset = Player.changeset(%Player{}, %{
      username: "testuser",
      level: (Application.get_env(:mudman, :max_player_level) + 1),
      health: 1,
      base_attack: 1,
      base_magic: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if player level too low" do
    changeset = Player.changeset(%Player{}, %{
      username: "testuser",
      level: 0,
      health: 1,
      base_attack: 1,
      base_magic: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if health too low" do
    changeset = Player.changeset(%Player{}, %{
      username: "testuser",
      level: 1,
      health: -1,
      base_attack: 1,
      base_magic: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if base_attack too low" do
    changeset = Player.changeset(%Player{}, %{
      username: "testuser",
      level: 1,
      health: 1,
      base_attack: -1,
      base_magic: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if base_magic too low" do
    changeset = Player.changeset(%Player{}, %{
      username: "testuser",
      level: 1,
      health: 1,
      base_attack: 1,
      base_magic: -1
    })
    refute changeset.valid?
  end

end
