defmodule Dataflow_PhoenixWeb.PageController do
  use Dataflow_PhoenixWeb, :controller
  plug Dataflow_PhoenixWeb.Plugs.DoNothing
  plug :do_nothing_plug

  def index(conn, _params) do
    render(conn, "index.html")
    |> IO.inspect()
  end

  defp do_nothing_plug(conn, _opts), do: conn
end
