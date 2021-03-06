# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mymapsv1,
  ecto_repos: [Mymapsv1.Repo]

# Configures the endpoint
config :mymapsv1, Mymapsv1Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+QueMD5UpGUnlD6VWW5nzw12w5Ay0WedCQ8fv1aZ9YVy457T66a3xRMWtjEO+MMA",
  render_errors: [view: Mymapsv1Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mymapsv1.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :geo_postgis,
  json_library: Poison # If you want to set your JSON module
  
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
