defmodule RenoWeb.PostController do
  use RenoWeb, :controller

  alias Reno.Posts
  alias Reno.Posts.Post

  def index(conn, _params) do
    posts = Posts.list_posts()
    render(conn, "index.html", posts: posts)
  end

  def show(conn, %{"id" => id}) do
    post = Posts.get_post(id)
    render(conn, "show.html", post: post)
  end

  def create(conn, %{"post" => post_params}) do
    case Posts.create_post(post_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "Post Created Successfully")
        |> redirect(to: Routes.post_path(conn, :show, user))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def new(conn, _params) do
    changeset = Posts.change_post(%Post{})
    render(conn, "new.html", changeset: changeset)
  end
end
