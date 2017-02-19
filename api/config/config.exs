# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slack_clone,
  ecto_repos: [SlackClone.Repo]

# Configures the endpoint
config :slack_clone, SlackClone.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tvppcIX8FEYrFON2dBA5XfefBQPjEanbdmXy8LHg4k1LswQ+IhXj+IAWi2/g+KBN",
  render_errors: [view: SlackClone.ErrorView, accepts: ~w(json)],
  pubsub: [name: SlackClone.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Guardian
config :guardian, Guardian,
  issuer: "SlackClone",
  ttl: {30, :days},
  verify_issuer: true,
  serializer: SlackClone.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
