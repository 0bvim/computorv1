defmodule Computorv1.MixProject do
  use Mix.Project

  def project do
    [
      app: :computor,
      version: "0.1.0",
      elixir: "~> 1.18",
      escript: escript()
    ]
  end

  def escript do
    [main_module: Computorv1.CLI]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end
end
