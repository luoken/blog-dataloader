defmodule Blog.Resource.AddCommentResource do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comment" do
    field :post_id, :id
    field :body, :string
  end

  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:post_id, :body])
    |> validate_required([
      :post_id,
      :body
    ])
  end
end
