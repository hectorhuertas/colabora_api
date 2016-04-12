defmodule ColaboraApi.NoteEndpointTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias ColaboraApi.Router
  alias ColaboraApi.Repo
  alias ColaboraApi.Note

  @opts Router.init([])
  test "Note index endpoint" do
    %Note{title: "some title", body: "some content"} |> Repo.insert!
    note = Repo.all(Note)
            |> Poison.encode!

    conn = conn(:get, "/api/v1/notes")
    response = Router.call(conn, @opts)

    assert response.status == 200
    assert response.resp_body == note
  end
end
