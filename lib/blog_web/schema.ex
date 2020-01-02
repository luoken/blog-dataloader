defmodule BlogWeb.Schema do
  use Absinthe.Schema
  use Absinthe.Relay.Schema, :modern

  import_types(BlogWeb.Schema.ContentTypes)
  import_types(BlogWeb.Schema.InputTypes)

  alias BlogWeb.Resolvers
  alias BlogWeb.Dataloaders

  query do
    @desc "Get all posts"
    # field :posts, list_of(:post) do
    connection field :posts, node_type: :post do
      resolve(&Resolvers.Content.list_posts/3)
    end

    field :find_posts, list_of(:post) do
      arg(:id, non_null(:id))
      resolve(&Resolvers.Content.find_posts/3)
    end

    @desc "Get all comments"
    field :comments, list_of(:comment) do
      resolve(&Resolvers.Comment.list_comments/3)
    end
  end

  mutation do
    field :create_comment, :comment do
      arg(:create_comment, non_null(:comment_create))
      resolve(&BlogWeb.Resolvers.Comment.create_comment/3)
    end

    field :create_content, :post do
      arg(:create_content, non_null(:content_create))
      resolve(&BlogWeb.Resolvers.Content.create_content/3)
    end
  end

  def context(ctx) do
    Map.put(ctx, :loader, loader())
  end

  defp loader do
    Dataloader.new()
    |> Dataloader.add_source(Dataloaders.Comments, Dataloaders.Comments.data())
  end

  def plugins do
    [Absinthe.Middleware.Dataloader] ++ Absinthe.Plugin.defaults()
  end

end
