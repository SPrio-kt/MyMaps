defmodule Mymapsv1.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name,     :string
      add :geom,     :geometry
      timestamps()
    end

  end
end
