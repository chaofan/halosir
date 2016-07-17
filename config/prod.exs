use Mix.Config

# For production, we configure the host to read the PORT
# from the system environment. Therefore, you will need
# to set PORT=80 before running your server.
#
# You should also configure the url host to something
# meaningful, we use this information when generating URLs.
#
# Finally, we also include the path to a manifest
# containing the digested version of static files. This
# manifest is generated by the mix phoenix.digest task
# which you typically run after static files are built.
config :halosir, HaloSir.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "halo.xhacker.im", port: 443],
  https: [port: 443,
          keyfile: System.get_env("KEY_PATH"),
          certfile: System.get_env("CERT_PATH")],
  cache_static_manifest: "priv/static/manifest.json"

# Do not print debug messages in production
config :logger, level: :info

import_config "prod.secret.exs"
