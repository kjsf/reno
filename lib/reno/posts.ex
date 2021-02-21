defmodule Reno.Posts do
  @moduledoc """
  This is the Posts context.
  """

  import Ecto.Query, warn: false
  alias Reno.Repo

  alias Reno.Posts.Post

  @doc """
  Returns the list of posts.

  ### Examples
  iex> list_posts()
  [%Posts{},...]
  """

  def list_posts() do
    Post
    |> Repo.all()
  end

  @doc """
  Returns a post of id `id`

  Raises exception is no return

  ##Examples
  iex> get_post!(id)
  [%Posts{},...]
  """
  def get_post!(id) do
    Post
    |> Repo.get!(id)
  end

  @doc """
   Creates new post
  """
  def create_post(attrs \\ %{}) do
    %Post{}
    |> Post.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{data: %User{}}

  """
  def change_post(%Post{} = post, attrs \\ %{}) do
    Post.changeset(post, attrs)
  end

  def delete_post(id) do
    Post
    |> Repo.get!(id)
    |> Repo.delete()
  end

  def update_post(%Post{} = post, attrs) do
    post
    |> Post.changeset(attrs)
    |> Repo.update()
  end
end
