defmodule Mymapsv1.Maps.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employees" do

    field :geom,  Geo.PostGIS.Geometry
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [])
    |> validate_required([])
  end
end
