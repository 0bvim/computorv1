defmodule Computorv1Test do
  use ExUnit.Case
  doctest Computorv1

  describe "basic input tests" do
    test "validate basic string input" do
      assert Computorv1.run("1x = 1x")
    end

    test "valid empty input" do
      assert Computorv1.run() ==
               {:error,
                "This program requires exactly one string argument and it must be a polynomial equation."}
    end
  end
end
