defmodule Testepitech.Api do
  @moduledoc """
  The Api context
  """

  import Ecto.Query, warn: false
  alias Testepitech.Repo

  alias Testepitech.Api.User

  @doc """
  Returns the list of users
  """

  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user
  """

  def get_user!(id), do: Repo.get!(User, id)

  @doc """
  Creates a user
  """

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user
  """

  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a user
  """

  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes
  """

  def change_user(%User{} = user, attrs \\ %{}) do
    User.changeset(user, attrs)
  end

  alias Testepitech.Api.Clock

  @doc """
  Returns the list of clocks
  """

  def list_clocks do
    Repo.all(Clock)
  end

  @doc """
  Gets a single clock
  Raises `Ecto.NoResultsError` if the Clock does not exist
  """

  def get_clock!(id), do: Repo.get!(Clock, id)

  @doc """
  Creates a clock
  """

  def create_clock(attrs \\ %{}) do
    %Clock{}
    |> Clock.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a clock
  """

  def update_clock(%Clock{} = clock, attrs) do
    clock
    |> Clock.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a clock
  """

  def delete_clock(%Clock{} = clock) do
    Repo.delete(clock)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking clock changes
  """

  def change_clock(%Clock{} = clock, attrs \\ %{}) do
    Clock.changeset(clock, attrs)
  end

  alias Testepitech.Api.Workingtime

  @doc """
  Returns the list of workingtimes
  """

  def list_workingtimes do
    Repo.all(Workingtime)
  end

  @doc """
  Gets a single workingtime
  Raises `Ecto.NoResultsError` if the Workingtime does not exist
  """

  def get_workingtime!(id), do: Repo.get!(Workingtime, id)

  @doc """
  Creates a workingtime
  """

  def create_workingtime(attrs \\ %{}) do
    %Workingtime{}
    |> Workingtime.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a workingtime
  """

  def update_workingtime(%Workingtime{} = workingtime, attrs) do
    workingtime
    |> Workingtime.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a workingtime
  """

  def delete_workingtime(%Workingtime{} = workingtime) do
    Repo.delete(workingtime)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking workingtime changes
  """

  def change_workingtime(%Workingtime{} = workingtime, attrs \\ %{}) do
    Workingtime.changeset(workingtime, attrs)
  end
end
