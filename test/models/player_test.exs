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
end
