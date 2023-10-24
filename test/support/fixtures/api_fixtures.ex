defmodule Testepitech.ApiFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Testepitech.Api` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        username: "some username"
      })
      |> Testepitech.Api.create_user()

    user
  end

  @doc """
  Generate a clock.
  """
  def clock_fixture(attrs \\ %{}) do
    {:ok, clock} =
      attrs
      |> Enum.into(%{
        status: true,
        time: ~N[2023-10-23 13:56:00]
      })
      |> Testepitech.Api.create_clock()

    clock
  end

  @doc """
  Generate a workingtime.
  """
  def workingtime_fixture(attrs \\ %{}) do
    {:ok, workingtime} =
      attrs
      |> Enum.into(%{
        end: ~N[2023-10-23 14:00:00],
        start: ~N[2023-10-23 14:00:00]
      })
      |> Testepitech.Api.create_workingtime()

    workingtime
  end

  @doc """
  Generate a workingtime.
  """
  def workingtime_fixture(attrs \\ %{}) do
    {:ok, workingtime} =
      attrs
      |> Enum.into(%{
        end: ~N[2023-10-23 14:14:00],
        start: ~N[2023-10-23 14:14:00]
      })
      |> Testepitech.Api.create_workingtime()

    workingtime
  end

  @doc """
  Generate a clock.
  """
  def clock_fixture(attrs \\ %{}) do
    {:ok, clock} =
      attrs
      |> Enum.into(%{
        status: true,
        time: ~N[2023-10-23 15:11:00]
      })
      |> Testepitech.Api.create_clock()

    clock
  end
end
