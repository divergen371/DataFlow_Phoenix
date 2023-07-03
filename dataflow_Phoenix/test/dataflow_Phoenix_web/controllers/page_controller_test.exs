defmodule Dataflow_PhoenixWeb.PageControllerTest do
  use Dataflow_PhoenixWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
