# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PickAnother.Repo.insert!(%PickAnother.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PickAnother.Repo
alias PickAnother.Song

[
  %Song{
    name: "Arkansas Traveller",
    genre: "bluegrass",
    key: "D"
  },
  %Song{
    name: "Brian Boru's March",
    genre: "irish",
    key: "Dm"
  }
] |> Enum.each(&Repo.insert!(&1))
