defmodule Abutment.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", Abutment do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Abutment do
  #   pipe_through :api
  # end
end
