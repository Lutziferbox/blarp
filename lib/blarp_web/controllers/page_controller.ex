defmodule BlarpWeb.PageController do
  use BlarpWeb, :controller

  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, BlarpWeb.LiveView, session: %{steps: 0})
  end
end
