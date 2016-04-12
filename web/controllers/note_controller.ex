defmodule ColaboraApi.NoteController do
  use ColaboraApi.Web, :controller

  def index(conn, _params) do
    render conn, notes: []
  end
end
