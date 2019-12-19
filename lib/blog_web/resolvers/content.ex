defmodule BlogWeb.Resolvers.Content do
  alias Blog.Resource.ContentResource

  def list_posts(_parent, _arg, _resolution) do
    {:ok, ContentResource.list_posts()}
  end

  def find_posts(_parent, %{id: id}, _resolution) do
    {:ok, ContentResource.find_post(id)}
  end

  def create_content(_, %{create_content: create_content}, _) do
    {:ok, ContentResource.create_content(create_content)}
  end
end
