defmodule Blog.Resource.AddContentResource do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post" do
    field :title, :string
    field :body, :string
  end

  def changeset(content, attrs) do
    content
    |> cast(attrs, [:title, :body])
    |> validate_required([
      :title,
      :body
    ])
  end
end
