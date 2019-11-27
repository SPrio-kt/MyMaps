defmodule Mymapsv1.Maps.Customer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "customers" do

    # field :id,           :integer
    field :geom,           Geo.PostGIS.Geometry
  end

  @doc false
  def changeset(customer, attrs) do
    customer
    |> cast(attrs, [])
    |> validate_required([])
  end
end
