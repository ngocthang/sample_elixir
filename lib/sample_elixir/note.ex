defmodule SampleElixir.Note do
  use Ecto.Schema
  schema "notes" do
    field :note_name, :string
    field :note_content, :string
  end
end
