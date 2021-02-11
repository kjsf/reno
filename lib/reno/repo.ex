defmodule Reno.Repo do
  use Ecto.Repo,
    otp_app: :reno,
    adapter: Ecto.Adapters.Postgres
end
