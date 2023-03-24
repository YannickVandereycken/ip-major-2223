defmodule UserDemoWeb.UserView do
  use UserDemoWeb, :live_view

  embed_templates("new_html/*")
end
