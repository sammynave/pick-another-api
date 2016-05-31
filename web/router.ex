defmodule PickAnother.Router do
  use PickAnother.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", PickAnother do
    pipe_through :api
  end
end
