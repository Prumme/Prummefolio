defmodule Prummefolio.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      PrummefolioWeb.Telemetry,
      # Start the Ecto repository
      Prummefolio.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Prummefolio.PubSub},
      # Start Finch
      {Finch, name: Prummefolio.Finch},
      # Start the Endpoint (http/https)
      PrummefolioWeb.Endpoint
      # Start a worker by calling: Prummefolio.Worker.start_link(arg)
      # {Prummefolio.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Prummefolio.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PrummefolioWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
