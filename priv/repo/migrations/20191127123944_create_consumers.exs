defmodule Mymapsv1.Repo.Migrations.CreateConsumers do
  use Ecto.Migration

  def change do
    create table(:consumers) do

      add :name,     :string

      timestamps()
    end
    execute("SELECT AddGeometryColumn ('consumers','geom',4326,'POINT',2);")

  end
end
