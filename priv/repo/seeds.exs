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
alias Testepitech.User
#alias Testepitech.Workingtime

# Utilisez une bibliothèque de gestion des horodatages, comme Timex
#{:ok, start_datetime} = Timex.parse("{2023-10-10 00:00:00}", "{YYYY-MM-DD HH:mm:ss}")
#{:ok, end_datetime} = Timex.parse("{2023-10-10 00:00:00}", "{YYYY-MM-DD HH:mm:ss}")

# Insérez les horodatages formatés dans la base de données
#Repo.insert! %Workingtime{start: start_datetime, end: end_datetime}

Repo.insert! %User{username: "A", email: "1"}
Repo.insert! %User{username: "B", email: "fdfdfdfdfdf"}
Repo.insert! %User{username: "C", email: "3"}
Repo.insert! %User{username: "D", email: "4"}
