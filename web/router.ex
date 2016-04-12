defmodule ColaboraApi.Router do
  use ColaboraApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ColaboraApi do
    pipe_through :api
  end
end
