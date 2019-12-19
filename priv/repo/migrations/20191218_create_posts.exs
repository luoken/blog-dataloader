defmodule Blog.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def up do
    create table(:post) do
      add :title, :string
      add :body, :string
    end

    create table(:comments) do
      add :post_id, :id
      add :body, :string
    end
  end
end
