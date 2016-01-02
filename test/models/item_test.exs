ExUnit.start

defmodule ItemTest do
  alias Mudman.Item
  use ExUnit.Case, async: true

  test "changeset is invalid if item level too big to use" do
    changeset = Item.changeset(%Item{}, %{
      ident: 1,
      name: "testitem",
      description: "item for tests",
      level: (Application.get_env(:mudman, :max_player_level) + 1),
      durability: 1,
      attack_damage: 1,
      magic_damage:  1,
      charges: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if durability too low" do
    changeset = Item.changeset(%Item{}, %{
      ident: 1,
      name: "testitem",
      description: "item for tests",
      level: 1,
      durability: -1,
      attack_damage: 1,
      magic_damage:  1,
      charges: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if durability too high" do
    changeset = Item.changeset(%Item{}, %{
      ident: 1,
      name: "testitem",
      description: "item for tests",
      level: 1,
      durability: 101,
      attack_damage: 1,
      magic_damage:  1,
      charges: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if attack_damage too low" do
    changeset = Item.changeset(%Item{}, %{
      ident: 1,
      name: "testitem",
      description: "item for tests",
      level: 1,
      durability: 1,
      attack_damage: -1,
      magic_damage:  1,
      charges: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if magic_damage too low" do
    changeset = Item.changeset(%Item{}, %{
      ident: 1,
      name: "testitem",
      description: "item for tests",
      level: 1,
      durability: 1,
      attack_damage: 1,
      magic_damage:  -1,
      charges: 1
    })
    refute changeset.valid?
  end

  test "changeset is invalid if charges too low" do
    changeset = Item.changeset(%Item{}, %{
      ident: 1,
      name: "testitem",
      description: "item for tests",
      level: 1,
      durability: 1,
      attack_damage: 1,
      magic_damage:  1,
      charges: -1
    })
    refute changeset.valid?
  end

end
