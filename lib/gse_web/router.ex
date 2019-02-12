defmodule GseWeb.Router do
  use GseWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GseWeb do
    pipe_through :api
  end
end
