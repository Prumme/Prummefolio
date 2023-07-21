defmodule Prummefolio.Repo do
  use Ecto.Repo,
    otp_app: :prummefolio,
    adapter: Ecto.Adapters.Postgres
end
