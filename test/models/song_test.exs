defmodule PickAnother.SongTest do
  use PickAnother.ModelCase

  alias PickAnother.Song

  @valid_attrs %{genre: "some content", key: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Song.changeset(%Song{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Song.changeset(%Song{}, @invalid_attrs)
    refute changeset.valid?
  end
end
