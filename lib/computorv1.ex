defmodule Computorv1 do
  @moduledoc """
  Documentation for `Computorv1`.
  """

  @doc """
  Parse and solve polynomial equations from first and second degree.

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

      {:error, reason} ->
        IO.puts(:standard_error, "Error: #{reason}")
    end
  end

  @doc """
  Contains the core logic of the application.
  It returns a value instead of exiting, making it easy to test.
  """
  def run([expression]) do
    IO.puts("Received poly equation:")

    Parser.parse(expression)
  end

  def run([""]) do
    # Error case: NO arguments provided
    {:error, Constants.error_wrong_input()}
  end

  def run(_) do
    {:error, Constants.error_wrong_input()}
  end
end
