defmodule Mudman.InventoryObject do
  @moduledoc """
  Define empty struct for all object that can live in
    user inventory.
  """

  defstruct(
    name:           "Unknown",  # Short name
    description:    "Unknown",  # Longer description
    id:             0,          # Integer-Id
    durability:     100,        # Item durability
    level:          0,          # Minimum player level to use
    attack_damage:  0,          # Attack damage that item inflicits
    magic_damage:   0,          # Magic damage that item inflicits
    charges:        0           # How many uses are left
  )

  def start_link(item) do
    json = get_item_json(item)
  end

  def get_item_json(item) do
    case File.read("") do
      _ -> nil
    end
  end

end
