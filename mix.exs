defmodule Secrets.MixProject do
  use Mix.Project

  def project do
    [
      app: :secrets,
      version: "0.1.0",
      elixir: "~> 1.8",
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

  defp package do
    [
      maintainers: ["FloatingGhost"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/FloatingGhost/ex_aws_secrets"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_aws, "~> 2.0"},
      {:poison, "~> 3.1"},
      {:hackney, "~> 1.9"}
    ]
  end
end
