# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reno,
  ecto_repos: [Reno.Repo]

# Configures the endpoint
config :reno, RenoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qDrCZnyuqteZ5L18UriK9/dI2H70y+M1tOX5Uyy/0BnB3dsC+0YRLMgP8F7OmXfk",
  render_errors: [view: RenoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Reno.PubSub,
  live_view: [signing_salt: "7YubMPg/"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
