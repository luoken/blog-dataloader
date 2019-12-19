defmodule BlogWeb.Dataloaders.Comments do
  # alias Blog.Resource.CommentResource

  def data(), do: Dataloader.Ecto.new(Blog.Repo, query: &query/2)

  def query(queryable, _params) do
    queryable
  end
end
