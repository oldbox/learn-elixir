defmodule Learn.MixProject do
  use Mix.Project

  def project do
    [
      app: :learn,
      version: "0.1.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:earmark, ">= 1.3.2", only: :dev},
      {:dialyxir, "~> 0.5.1", only: :dev}
    ]
  end

  defp description() do
    "Do not use it, it's simply for self learnning purpose"
  end

  defp package() do
    [
      name: "tanjiasong_learn",
      licenses: ["Apache-2.0"],
      links: %{"Github" => "https://github.com/oldbox/learn-elixir"}
    ]
  end
end
