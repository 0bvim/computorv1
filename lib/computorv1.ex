defmodule Computorv1.CLI do
  @moduledoc """
  Documentation for `Computorv1`.
  """

  @doc """
  main to parse and solve equations

  ## Examples

    ./computor "5 * X^0 + 4 * X^1 - 9.3 * X^2 = 1 * X^0"
    Reduced form: 4 * X^0 + 4 * X^1 - 9.3 * X^2 = 0
    Polynomial degree: 2
    Discriminant is strictly positive, the two solutions are:
    0.905239
    -0.475131
  """
  def main([poly]) do
    IO.puts("Received poly:")
    Parser.parse(poly)
    IO.puts(poly)
  end

  def main(_args) do
    IO.puts(:standard_error, "☣️Error: This script requires exactly one string argument.")
    System.halt(1)
  end
end
