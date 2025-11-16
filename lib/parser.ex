defmodule Parser do
  @valid_equation "valid equation =D"
  @invalid_equation "Input must be a valid polynomial equation."
  # TODO: Add constants here
  @moduledoc """
  This module has built to detect polynomial degree
  and if equation is valid.
  """
  def parse(expression) do
    validate_terms(expression)
    # |> split_terms()
  end

  defp split_terms(expression) do
    # TODO: add equals and split it in left and right hand side with proper logic
    String.split(expression, ["+", "-"], trim: true)
    |> Enum.map(&String.replace(&1, " ", ""))
  end

  defp validate_terms(expression)

  defp validate_terms(expression) do
    # TODO: this function should validate a polynomial equation
    # before follow to another steps
    # TODO: add pattern matching here instead use if, like in hangman
    if String.contains?(expression, "=") do
      has_valid_poly_terms =
        split_terms(expression)
        # just a test, need improvement
        # TODO: pattern matching here (new function) validating 'x, x^1, x^2' as "valid" and possible to solve
        # because of the program constraint to solve only 1st and 2nd polynomial equations
        # then another function to validate another levels and another to handle invalid cases.
        |> Enum.any?(&String.contains?(&1, ["x^2", "x^3", "x^4", "x"]))

      if has_valid_poly_terms do
        {:ok, @valid_equation}
      else
        {:error, @invalid_equation}
      end
    end
  end
end
