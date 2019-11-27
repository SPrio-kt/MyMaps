defmodule Mymapsv1.Repo.Migrations.CreateCustomers do
  use Ecto.Migration

  def change do
    execute("CREATE TABLE customers (id int, geom geometry(Point, 4326));")

  end
end
