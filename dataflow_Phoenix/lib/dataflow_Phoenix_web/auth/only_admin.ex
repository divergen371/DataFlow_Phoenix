defmodule Dataflow_PhoenixWeb.Auth.OnlyAdmin do
  import Phoenix.Controller, only: [redirect: 2]
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    if admin?(conn) do
      conn
    else
      conn
      |> redirect(external: "https://www.phoenixframework.org/")
      |> halt()
    end
  end

  defp admin?(_conn) do
    false
  end
end
