# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     HelloPhoenix.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# Enum.each(Enum.to_list 1..10, fn(i) ->   IO.puts(i)  end)
params = %{name: "Ginzarb", email: "ginzarb@example.com", bio: "Ginzarb!!!!!", number_of_pets: 3}
changeset = HelloPhoenix.User.changeset(%HelloPhoenix.User{}, params)

Enum.each(Enum.to_list(1..100), fn(i) ->
  HelloPhoenix.Repo.insert!(changeset)
end)
