defmodule Dataflow_Phoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Dataflow_PhoenixWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Dataflow_Phoenix.PubSub},
      # Start the Endpoint (http/https)
      Dataflow_PhoenixWeb.Endpoint
      # Start a worker by calling: Dataflow_Phoenix.Worker.start_link(arg)
      # {Dataflow_Phoenix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Dataflow_Phoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Dataflow_PhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
