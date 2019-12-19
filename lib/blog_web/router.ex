defmodule BlogWeb.Router do
  use BlogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/api", BlogWeb do
  #   pipe_through :api
  # end

  scope "/api" do
    pipe_through :api
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: BlogWeb.Schema
    forward "/", Absinthe.Plug, schema: Blogweb.Schema
  end
end
