defmodule Constants do
  @moduledoc """
  Constants used in Computorv1.
  """

  @doc """
  Error message for invalid input.
  """
  def error_wrong_input(),
    do: "This program requires exactly one string argument and it must be a polynomial equation."

  def error_invalid_poly(), do: "Input must be a valid polynomial equation."
end
