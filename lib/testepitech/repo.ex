defmodule Testepitech.Repo do
  use Ecto.Repo,
    otp_app: :testepitech,
    adapter: Ecto.Adapters.Postgres
end
