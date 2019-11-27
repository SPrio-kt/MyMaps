defmodule Mymapsv1.Maps.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name,           :string
    field :geom,           Geo.PostGIS.Geometry
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [])
    |> validate_required([])
  end
end
