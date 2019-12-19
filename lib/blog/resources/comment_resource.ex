defmodule Blog.Resource.CommentResource do
  alias Blog.Repo
  alias Blog.Resource.AddCommentResource
  import Ecto.Query, only: [from: 2]

  def list_comments(), do: Repo.all(AddCommentResource)

  def find_comments_by_id(id) do
    query =
      Repo.all(from a in AddCommentResource, where: a.post_id == ^id)

    IO.inspect("was hit from find_comments_by_id")
    query
  end

  def create_comment(attrs \\ %{}) do
    %AddCommentResource{}
    |> AddCommentResource.changeset(attrs)
    |> Repo.insert()
  end

  
end
