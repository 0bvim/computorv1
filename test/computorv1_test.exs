defmodule Computorv1Test do
  use ExUnit.Case
  doctest Computorv1

  describe "basic input tests" do
    test "validate basic string input" do
      assert Computorv1.run("1x = 1x")
    end

    test "empty input" do
      assert Computorv1.run([]) ==
               {:error, Constants.error_message()}
    end

    test "invalid empty string input" do
      assert Computorv1.run("") ==
               {:error, Constants.error_message()}
    end

    test "invalid empty string in a list input" do
      assert Computorv1.run([""]) ==
               {:error, Constants.error_message()}
    end
  end
end
