# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Abutment.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "l5TEii3+71dkYW0U4yD6l7+25pykFcCYRmclg6iEeN0UheZViOY8nhoxfghkS6BAqpDbGPgGJ2B3JUv62ERklg==",
  debug_errors: false

# Session configuration
config :phoenix, Abutment.Router,
  session: [store: :cookie,
            key: "_abutment_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
