defmodule BlarpWeb.PageControllerTest do
  use BlarpWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Kontostand:"
  end
end
