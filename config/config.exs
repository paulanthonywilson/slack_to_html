# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

excluded = "#{__DIR__}/excluded_channels.txt"
|> File.read!()
|> String.split("\n")

config :slack_to_html,
  output_dir: "../output",
  excluded_channels: excluded,
  # keep to nil if you don't want GA tracking
  ga_tracking_id: nil
