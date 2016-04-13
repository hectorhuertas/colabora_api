defmodule ColaboraApi.Router do
  use ColaboraApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", ColaboraApi do
    pipe_through :api

    get "/notes", NoteController, :index
  end
end
