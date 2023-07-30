defmodule PrummefolioWeb.PageController do
  use PrummefolioWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home)
  end

  def handle_event("click", _params, socket) do
    IO.inspect("test")
    {:noreply, socket}
  end
end
