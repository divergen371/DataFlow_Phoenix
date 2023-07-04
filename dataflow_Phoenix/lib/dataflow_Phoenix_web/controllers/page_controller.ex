defmodule Dataflow_PhoenixWeb.PageController do
  use Dataflow_PhoenixWeb, :controller

  plug(Dataflow_PhoenixWeb.Auth.OnlyAdmin)

  def index(conn, _params) do
    IO.puts("Only administrator can access.")
    render(conn, "index.html")
  end
end
