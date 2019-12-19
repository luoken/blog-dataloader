defmodule Blog.Resource.CommentResource do
  alias Blog.Repo
  alias Blog.Resource.Comment
  import Ecto.Query, only: [from: 2]

  def list_comments(), do: Repo.all(Comment)

  def find_comments_by_id(id) do
    query =
      Repo.all(from a in Comment, where: a.post_id == ^id)

    IO.inspect("was hit from find_comments_by_id")
    query
  end

  def create_comment(attrs \\ %{}) do
    %Comment{}
    |> Comment.changeset(attrs)
    |> Repo.insert()
  end

  
end
