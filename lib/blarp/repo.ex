defmodule Blarp.Repo do
  use Ecto.Repo,
    otp_app: :blarp,
    adapter: Ecto.Adapters.Postgres
end
