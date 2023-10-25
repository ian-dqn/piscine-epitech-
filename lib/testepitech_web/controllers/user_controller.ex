defmodule TestepitechWeb.UserController do
  use TestepitechWeb, :controller

  alias Testepitech.Api
  alias Testepitech.Api.User

  action_fallback TestepitechWeb.FallbackController

  def index(conn, _params) do
    users = Api.list_users()
    render(conn, :index, users: users)
  end

  def create(conn, %{"user" => user_params}) do
    with {:ok, %User{} = user} <- Api.create_user(user_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/users/#{user}")
      |> render(:show, user: user)
    end
  end

  #def create(conn, %{"user" => params}) do
  #  {:ok, _user} =
  #    %User{}
  #    |> User.changeset(params)
  #    |> Repo.insert()
  #  conn |> redirect(to: "/")
  #end

  def show(conn, %{"id" => id}) do
    # Convert first "id" in int
    user_id = String.to_integer(id)

    # get user w/ the id
    user = Api.get_user!(user_id)

    render(conn, :show, user: user)
  end

  #def show(conn, %{"id" => id}) do
   # user = Api.get_user!(id)
    #render(conn, :show, user: user)
  #end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = Api.get_user!(id)

    with {:ok, %User{} = user} <- Api.update_user(user, user_params) do
      render(conn, :show, user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    user = Api.get_user!(id)

    with {:ok, %User{}} <- Api.delete_user(user) do
      send_resp(conn, :no_content, "")
    end
  end

end
