defmodule Computorv1 do
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
  def main(args) do
    case run(args) do
      {:ok, message} ->
        IO.puts(message)
        System.halt(0)

      {:error, reason} ->
        IO.puts(:standard_error, "Error: #{reason}")
        System.halt(1)
    end
  end

  @doc """
  Contains the core logic of the application.
  It returns a value instead of exiting, making it easy to test.
  """
  def run() do
    # Error case: NO arguments provided
    {:error,
     "This program requires exactly one string argument and it must be a polynomial equation."}
  end

  def run(args) do
    IO.puts("Received poly equation:")
    Parser.parse(args)
  end
end
