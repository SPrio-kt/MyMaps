defmodule Mymapsv1Web.PageController do
  use Mymapsv1Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
