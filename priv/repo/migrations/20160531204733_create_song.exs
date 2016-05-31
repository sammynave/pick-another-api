defmodule PickAnother.Repo.Migrations.CreateSong do
  use Ecto.Migration

  def change do
    create table(:songs) do
      add :name, :string
      add :key, :string
      add :genre, :string

      timestamps
    end

  end
end
