defmodule PrummefolioWeb.PageControllerTest do
  use PrummefolioWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Aurélien"
  end

  test "GET /about", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "<span class=\"uppercase\">à</span> propos"
  end

  test "GET /stacks", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Stack"
  end
end
