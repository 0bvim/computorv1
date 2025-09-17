defmodule Parser do
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

  defp validate_terms(expression) do
    # TODO: this function should validate a polynomial equation
    # before follow to another steps
    if String.contains?(expression, "=") do
      has_valid_poly_terms =
        split_terms(expression)
        # just a test, need improvement
        |> Enum.any?(&String.contains?(&1, ["x^2", "x^3", "x^4", "x"]))

      if has_valid_poly_terms do
        {:ok, "valid equation =D"}
      else
        {:error, Constants.error_invalid_poly()}
      end
    end
  end
end
