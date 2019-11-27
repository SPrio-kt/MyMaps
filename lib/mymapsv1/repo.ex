defmodule Mymapsv1.Repo do
  use Ecto.Repo,
    otp_app: :mymapsv1,
    adapter: Ecto.Adapters.Postgres
end
