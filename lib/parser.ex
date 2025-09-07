defmodule Parser do
  @moduledoc """
  This module has built to detect polynomial degree
  and if equation is valid.
  """
  def parse(expression) do
    validate_terms(expression)
    |> split_terms()
  end

  defp split_terms(expression) do
    # TODO: add equals and split it in left and right hand side
    String.split(expression, ["+", "-", "*", "/"], trim: true)
    |> Enum.map(&String.replace(&1, " ", ""))
  end

  defp validate_terms(terms) do
    # TODO: this function should validate a valid polynomial equation
    # before follow to another steps
    if String.contains?(terms, "=") do
      terms
    else
      {:error, "Input must be a valid polynomial equation."}
    end
  end
end
