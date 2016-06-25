ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Testrr.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Testrr.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Testrr.Repo)

