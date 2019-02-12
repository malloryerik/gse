defmodule Gse.Repo do
  use Ecto.Repo,
    otp_app: :gse,
    adapter: Ecto.Adapters.Postgres
end
