defmodule SebexTestX.MixProject do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :sebex_test_x,
      version: @version,
      elixir: "~> 1.12",
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.4", only: :dev, runtime: false},
      {:espec, "~> 1.8.3", only: :test},
      {:excoveralls, "~> 0.11", only: :test},
      {:qex, "~> 0.3"},
      {:telemetry, "~> 0.4"},
      {:bunch, "~> 1.3"},
      {:ratio, "~> 2.0"}
    ]
  end

  defp package do
    [
      description: "",
      organization: "membraneframework_labs",
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => link(),
        "Membrane Framework Homepage" => "https://membraneframework.org"
      }
    ]
  end

  defp link do
    "https://github.com/membraneframework/membrane-core"
  end
end
