defmodule Blog.Resource.ContentResource do
  alias Blog.Repo
  alias Blog.Resource.AddContentResource
  import Ecto.Query, only: [from: 2]

  def list_posts(), do: Repo.all(AddContentResource)

  def find_post(id) do
    Repo.all(from a in AddContentResource, where: a.id == ^id)
  end

  def create_content(attrs \\ %{}) do
    %AddContentResource{}
    |> AddContentResource.changeset(attrs)
    |> Repo.insert()
  end
end
