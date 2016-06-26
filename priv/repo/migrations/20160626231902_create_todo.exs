defmodule Testrr.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :completed, :boolean, default: false
      add :completed_at, :datetime

      timestamps
    end

  end
end
