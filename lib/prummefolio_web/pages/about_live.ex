defmodule PrummefolioWeb.AboutLive do
  use PrummefolioWeb, :live_view
  alias Prummefolio.Api.GitHub

  def mount(_params, _session, socket) do

    GitHub.start
    response = GitHub.get_repo("Prumme")
    socket =
    if response.status_code !=  200 do
      socket
      |> assign(:repos, [])
      |> put_flash(:error, "Error fetching repos")
    else
      socket
      |> assign(:repos, response.body|>Enum.slice(0, 4))
    end

    {:ok, socket}
  end
end
