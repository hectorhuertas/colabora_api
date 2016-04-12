defmodule ColaboraApi.NoteController do
  use ColaboraApi.Web, :controller

  alias ColaboraApi.Note

  def index(conn, _params) do
    notes = Repo.all(Note)
    render conn, "index.json", notes: notes
  end
end
