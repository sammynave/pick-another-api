defmodule PickAnother.SongView do
  use PickAnother.Web, :view
  use JaSerializer.PhoenixView

  attributes [:name, :key, :genre, :inserted_at, :updated_at]
end
