defmodule Dataflow_PhoenixWeb.PageController do
  use Dataflow_PhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
    |> IO.inspect()
  end
end
