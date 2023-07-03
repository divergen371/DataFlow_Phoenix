defmodule Dataflow_PhoenixWeb.Plugs.DoNothing do
  def init(opts \\ []) do
    opts
  end

  def call(conn, _opts) do
    conn
  end
end
