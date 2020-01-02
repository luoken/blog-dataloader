defmodule BlogWeb.Dataloaders.Comments do
  def data(), do: Dataloader.Ecto.new(Blog.Repo, query: &query/2)

  def query(Blog.Resource.Comment, _params) do
    IO.inspect(Blog.Resource.Comment, label: "resource comment")
    Blog.Resource.Comment
  end

  def query(queryable, _params) do
    queryable |> IO.inspect(label: "queryable")
  end
end
