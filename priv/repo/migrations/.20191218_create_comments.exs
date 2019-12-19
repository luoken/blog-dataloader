defmodule Blog.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def up do
    create table(:comment) do
      add :post_id, :id
      add :body, :string
    end
  end
end
