defmodule SampleElixir.Repo.Migrations.CreateNotesTable do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :note_name, :string
      add :note_content, :string
    end
  end
end
