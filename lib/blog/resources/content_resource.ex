defmodule Blog.Resource.ContentResource do
  alias Blog.Repo
  alias Blog.Resource.AddContentResource
  import Ecto.Query, only: [from: 2]

  @data [
    %{
      id: 1,
      title: "The first blog post",
      body: "The first blog post body"
    },
    %{
      id: 2,
      title: "The second blog post",
      body: "The second blog post body"
    },
    %{
      id: 3,
      title: "The third blog post",
      body: "The third blog post body"
    }
  ]

  def list_posts(), do: Repo.all(AddContentResource)


  def find_post(id) do
    id = String.to_integer(id)

    @data
    |> Enum.reduce([], fn x, acc ->
      if x[:id] == id do
        acc ++ [x]
      else
        acc
      end
    end)
  end

  def create_content(attrs \\ %{}) do
    %AddContentResource{}
    |> AddContentResource.changeset(attrs)
    |> Repo.insert()
  end
end
