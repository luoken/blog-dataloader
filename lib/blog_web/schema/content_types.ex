defmodule BlogWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation
  use Absinthe.Relay.Schema.Notation, :modern
  import Absinthe.Resolution.Helpers, only: [dataloader: 1]

  connection node_type: :post

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :comments, list_of(:comment), resolve: dataloader(BlogWeb.Dataloaders.Comments)
  end

  object :comment do
    field :id, :id
    field :post_id, :id
    field :body, :string
  end
end
