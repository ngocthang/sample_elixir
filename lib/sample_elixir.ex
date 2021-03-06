defmodule SampleElixir do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(SampleElixir.Repo, []),
    ]

    opts = [strategy: :one_for_one, name: SampleElixir.Supervisor]
Supervisor.start_link(children, opts)
  end
end
