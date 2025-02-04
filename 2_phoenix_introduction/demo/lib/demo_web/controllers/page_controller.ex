defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def mypage(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :mypage, layout: false)
  end
end
