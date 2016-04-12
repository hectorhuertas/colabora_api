defmodule ColaboraApi.NoteEndpointTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias ColaboraApi.Router

  @opts Router.init([])
  test "Note index endpoint" do
    conn = conn(:get, "/api/v1/notes")
    response = Router.call(conn, @opts)
    assert response.status == 200
    assert response.resp_body == "[]"
  end
end
