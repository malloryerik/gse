# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gse, Gse.Repo,
  database: "gse_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :gse,
  ecto_repos: [Gse.Repo]

# Configures the endpoint
config :gse, GseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "00JgUFze94XMMzCNBreXj/6iwznyjSjtOupRnkbQJjAAxVwPmAJ6haomRYs7HPAf",
  render_errors: [view: GseWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Gse.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
