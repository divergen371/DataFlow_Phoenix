defmodule Dataflow_PhoenixWeb.StaticHTMLController do
  use Dataflow_PhoenixWeb, :controller

  plug(Plug.Static,
    at: "/static",
    from: {:Dataflow_Phoenix, "priv/static_html"},
    only: ~w(css)
  )

  def index(conn, _params) do
    html_path = Path.join(["priv/static_html" | conn.params["path"]])
    IO.inspect(html_path)
    case File.read(html_path) do
      {:ok, data} ->
        html(conn, data)

      _ ->
        conn
        |> put_status(:not_found)
        |> put_view(Dataflow_PhoenixWeb.ErrorView)
        |> render(:"404")
    end
  end
end
