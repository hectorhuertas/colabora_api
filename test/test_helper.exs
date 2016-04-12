ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ColaboraApi.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ColaboraApi.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ColaboraApi.Repo)

