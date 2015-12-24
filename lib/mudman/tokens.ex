defmodule Mudman.Tokens do
  @movement [
    :go, :walk, :run, :jump, :swim
  ]

  @inventory [
    :take, :put, :drop, :combine, :build, :use, :hold
  ]

  @observation [
    :look, :view
  ]

  @manipulation [
    :touch, :push, :pull, :break
  ]

  @conjunctions [
    :and, :or
  ]

  @modifiers [
    :to, :in, :on, :out, :under, :over, :front, :behind
  ]

  def movement,     do: @movement
  def inventory,    do: @inventory
  def observation,  do: @observation
  def manipulation, do: @manipulation
  def verbs do
    @movement ++ @inventory ++ @observation ++ @manipulation
  end

  def conjunctions, do: @conjunctions

  def modifiers, do: @modifiers
end
