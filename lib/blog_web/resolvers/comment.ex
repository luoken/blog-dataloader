defmodule BlogWeb.Resolvers.Comment do
  alias Blog.Resource.CommentResource

  def list_comments(_parents, _args, _resolution) do
    {:ok, CommentResource.list_comments()}
  end

  def find_comments_by_id(%{id: id}, _args, _resolution) do
    {:ok, CommentResource.find_comments_by_id(id)}
  end

  def create_comment(_, %{create_comment: create_comment}, _) do
    {:ok, CommentResource.create_comment(create_comment)}
  end
end
