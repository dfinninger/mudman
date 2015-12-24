defmodule Mudman.Parser do
  @moduledoc """
  Turns user input into data.
  *** EVENTUALLY PUT COMMENT LINE HERE ->

  def parse(user_string) do
    user_string
    |> String.split
    |> Enum.map(&String.to_atom(&1)) # tokenize
    |> filter_out_crap
  end


  defp filter_out_crap(token_list) do
    { token_list, HashDict.new }
    |> get_verb
    |> get_noun_or_modifier
    |> get_conjunction
    |> get_noun
  end

  defp get_verb([ verb_candidate | rest ], accum) do
    if Enum.any(Tokens.verbs, &(&1 == verb_candidate)) do
      HashDict.put(accum, :verb, verb_candidate)
      { rest, accum }
    else
      get_verb({ rest, accum })
    end
  end
   *** EVENTUALLY TAKE NET LINE OUT ***
   """
end
