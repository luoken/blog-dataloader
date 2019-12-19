defmodule Blog.Resource.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Resource.Post

  @primary_key {:id, :id, autogenerate: true}
  @foreign_key_type :id
  schema "comments" do
    field :body, :string
    belongs_to(:post, Post)
  end

  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:body, :post_id])
    |> validate_required([
      :body,
      :post_id
    ])
  end
end
