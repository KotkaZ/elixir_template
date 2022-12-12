# Volt

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

## Command Toolbox

`mix deps.get` - Installs new dependencies.
`mix ecto.reset` - Drops database, creates a new one and applies migrations.
`mix phx.server` - Starts a development server.
`export MIX_ENV="test"` - Sets ENV variable to test. Required by hound tests.
`mix white_bread.run` - Runs BDD tests.
`mix ecto.migrate` - Applies migrations solely.
`mix ecto.gen.migration MIGRATION_NAME` - Creates migration.
`mix test` - Runs unit tests. (used for TDD)
