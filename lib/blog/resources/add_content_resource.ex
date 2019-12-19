defmodule Blog.Resource.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Resource.Comment

  @primary_key {:id, :id, autogenerate: true}
  @foreign_key_type :id
  schema "post" do
    field :title, :string
    field :body, :string
    has_many(:comments, Comment)
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
