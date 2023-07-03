defmodule Dataflow_PhoenixWeb.Plugs.PutSession do
  import Plug.Conn, only: [put_session: 3]

  def init(opts \\ []) do
    opts
  end

  def call(conn, _opts) do
    conn
    |> put_session("key", "value")
  end
end
