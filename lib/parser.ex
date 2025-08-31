defmodule Parser do
  @moduledoc """
  This module has built to detect polynomial degree
  and if equation is valid.
  """
  def parse(expression) do
    split_terms(expression)
    |> validate_terms()
  end

  defp split_terms(expression) do
    # TODO: add equals and detect when it was left or right hand side
    String.split(expression, ["+", "-", "*", "/"], trim: true)
    |> Enum.map(&String.replace(&1, " ", ""))
    |> IO.inspect()
  end

  defp validate_terms(terms) do
    terms
  end
end
