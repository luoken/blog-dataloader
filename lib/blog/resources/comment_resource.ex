defmodule Blog.Resource.CommentResource do
  alias Blog.Repo
  alias Blog.Resource.AddCommentResource
  import Ecto.Query, only: [from: 2]

  @data [
    %{
      id: 1,
      post_id: 1,
      body: "The first post was awesome!"
    },
    %{
      id: 2,
      post_id: 1,
      body: "The first post was awesome too! omg"
    },
    %{
      id: 3,
      post_id: 2,
      body: "The second post was not so awesome!"
    },
    %{
      id: 4,
      post_id: 3,
      body: "The third post was awesome! what?!"
    }
  ]

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
