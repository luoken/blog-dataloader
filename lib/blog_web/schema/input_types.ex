defmodule BlogWeb.Schema.InputTypes do
  use Absinthe.Schema.Notation

  input_object :content_create do
    field :title, :string
    field :body, :string
  end

  input_object :comment_create do
    field :post_id, :id
    field :body, :string
  end
end
