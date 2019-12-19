defmodule Blog.Resource.ContentResource do
  alias Blog.Repo
  alias Blog.Resource.Post
  import Ecto.Query, only: [from: 2]

  def list_posts(), do: Repo.all(Post)

  def find_post(id) do
    Repo.all(from a in Post, where: a.id == ^id)
  end

  def create_content(attrs \\ %{}) do
    %Post{}
    |> Post.changeset(attrs)
    |> Repo.insert()
  end
end
