# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Testepitech.Repo.insert!(%Testepitech.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Testepitech.Repo
alias Testepitech.Api.User
#alias Testepitech.Api.Clock
#Repo.insert! %Clock{datetime: "10/10/2023", status: "true"}


Repo.insert! %User{username: "A", email: "1"}
Repo.insert! %User{username: "B", email: "fdfdfdfdfdf"}
