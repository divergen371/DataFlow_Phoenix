defmodule Dataflow_PhoenixWeb.Plug.DoNothing do
  def init(opts \\ []) do
    opts
  end

  def call(conn, _opts) do
    conn
  end
end
