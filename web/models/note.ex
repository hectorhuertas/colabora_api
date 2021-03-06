defmodule ColaboraApi.Note do
  use ColaboraApi.Web, :model

  schema "notes" do
    field :title, :string
    field :body, :string

    timestamps
  end

  @required_fields ~w(title body)
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

  defimpl Poison.Encoder, for: ColaboraApi.Note do
    def encode(note, _options) do
      note
        |> Map.from_struct
        |> Map.drop([:__meta__, :__struct__])
        |> Poison.encode!
    end
  end
end
