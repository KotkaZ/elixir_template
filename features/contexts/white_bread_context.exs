defmodule WhiteBreadContext do
  use WhiteBread.Context
  use Hound.Helpers
  alias Volt.{Repo,UserManager}

  feature_starting_state fn  ->
    Application.ensure_all_started(:hound)
    %{}
  end
  scenario_starting_state fn state ->
        Hound.start_session(
        additional_capabilities: %{
          chromeOptions: %{ "args" => [
              "--user-agent=#{Hound.Browser.user_agent(:chrome)}",
              "--headless",
              "--disable-gpu",
              "--no-sandbox",
              "--disable-extensions",
              "--disable-dev-shm-usage"
          ]}
        }
    )
    Ecto.Adapters.SQL.Sandbox.checkout(Volt.Repo)
    Ecto.Adapters.SQL.Sandbox.mode(Volt.Repo, {:shared, self()})
    %{}
  end
  scenario_finalize fn _status, _state ->
    Ecto.Adapters.SQL.Sandbox.checkin(Volt.Repo)
    Hound.end_session
  end

end
