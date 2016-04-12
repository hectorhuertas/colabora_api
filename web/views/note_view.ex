defmodule ColaboraApi.NoteView do
  use ColaboraApi.Web, :view

  def render("index.json", %{notes: notes}) do
    notes
  end
end
