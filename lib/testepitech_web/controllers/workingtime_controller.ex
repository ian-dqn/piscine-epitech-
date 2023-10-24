defmodule TestepitechWeb.WorkingtimeController do
  use TestepitechWeb, :controller

  alias Testepitech.Api
  alias Testepitech.Api.Workingtime

  action_fallback TestepitechWeb.FallbackController

  def index(conn, _params) do
    workingtimes = Api.list_workingtimes()
    render(conn, :index, workingtimes: workingtimes)
  end

  def create(conn, %{"workingtime" => workingtime_params}) do
    with {:ok, %Workingtime{} = workingtime} <- Api.create_workingtime(workingtime_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/workingtimes/#{workingtime}")
      |> render(:show, workingtime: workingtime)
    end
  end

  def show(conn, %{"id" => id}) do
    workingtime = Api.get_workingtime!(id)
    render(conn, :show, workingtime: workingtime)
  end

  def update(conn, %{"id" => id, "workingtime" => workingtime_params}) do
    workingtime = Api.get_workingtime!(id)

    with {:ok, %Workingtime{} = workingtime} <- Api.update_workingtime(workingtime, workingtime_params) do
      render(conn, :show, workingtime: workingtime)
    end
  end

  def delete(conn, %{"id" => id}) do
    workingtime = Api.get_workingtime!(id)

    with {:ok, %Workingtime{}} <- Api.delete_workingtime(workingtime) do
      send_resp(conn, :no_content, "")
    end
  end
end
