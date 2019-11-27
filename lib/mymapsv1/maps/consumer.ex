defmodule Mymapsv1.Maps.Consumer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "consumers" do
    field :name,           :string
    field :geom,           Geo.PostGIS.Geometry
    timestamps()
  end

  @doc false
  def changeset(consumer, attrs) do
    consumer
    |> cast(attrs, [])
    |> validate_required([])
  end
end
