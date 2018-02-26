# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :soul_yellow,
  ecto_repos: [SoulYellow.Repo]

# Configures the endpoint
config :soul_yellow, SoulYellow.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fqsFtO+a+x/0V+z8kybqpz+DrW5LBq7wWudc9p63CH2KHo/LNZTlHrB5Pmwm54bG",
  render_errors: [view: SoulYellow.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SoulYellow.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
