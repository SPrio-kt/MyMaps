defmodule Mymapsv1.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    execute("CREATE TABLE employees (id SERIAL, geom geometry(Point, 4326));")
  end
end
