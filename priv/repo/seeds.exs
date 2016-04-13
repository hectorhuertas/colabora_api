# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
    # ColaboraApi.Repo.insert!(%ColaboraApi.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


ColaboraApi.Repo.insert!(%ColaboraApi.Note{title: "Morning meeting", body: "Discuss current state of work"})
ColaboraApi.Repo.insert!(%ColaboraApi.Note{title: "Phoenix Meetup", body: "Impulse begginer's track. Lots of people learning"})
