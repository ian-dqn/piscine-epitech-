defmodule Testepitech.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TestepitechWeb.Telemetry,
      Testepitech.Repo,
      {DNSCluster, query: Application.get_env(:testepitech, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Testepitech.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Testepitech.Finch},
      # Start a worker by calling: Testepitech.Worker.start_link(arg)
      # {Testepitech.Worker, arg},
      # Start to serve requests, typically the last entry
      TestepitechWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Testepitech.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TestepitechWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
