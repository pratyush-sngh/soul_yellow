defmodule SoulYellow.PageController do
  use SoulYellow.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
