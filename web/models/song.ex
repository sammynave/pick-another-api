defmodule PickAnother.Song do
  use PickAnother.Web, :model

  schema "songs" do
    field :name, :string
    field :key, :string
    field :genre, :string

    timestamps
  end

  @required_fields ~w(name key genre)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
