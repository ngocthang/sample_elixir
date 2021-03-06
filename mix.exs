defmodule SampleElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :sample_elixir,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
     [applications: [:logger, :ecto, :mariaex],
         mod: {SampleElixir, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
      [{:ecto, "~> 1.1.5"}, # or "~> 2.0" for Ecto 2
          {:mariaex, "~> 0.6.0"}] # or "~> 0.7.0" for Ecto 2
  end
end
