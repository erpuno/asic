defmodule ASiC.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :asic,
      version: "0.4.0",
      elixir: "~> 1.8",
      description: "ASiC Document Container ISO 21320-1",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :abac,
      links: %{"GitHub" => "https://github.com/erpuno/asic"}
    ]
  end

  def application() do
    [mod: {:abac, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
