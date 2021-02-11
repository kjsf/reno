defmodule RenoWeb.PageController do
  use RenoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
