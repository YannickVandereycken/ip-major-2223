defmodule DemoWeb.MyPage do
  use Phoenix.LiveView

  def mount(_params, _session, socket), do: {:ok, socket}

  # embed_templates("my_page/")
  def render(assigns) do

    ~H"""
        <h1>-----Hello World--------</h1>
    """
  end
end
