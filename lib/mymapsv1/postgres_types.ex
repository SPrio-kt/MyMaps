Postgrex.Types.define(Mymapsv1.PostgresTypes,
              [Geo.PostGIS.Extension] ++ Ecto.Adapters.Postgres.extensions(),
              json: Poison)
