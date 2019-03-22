defmodule BlarpWeb.LiveView do
  use Phoenix.LiveView

  def render(assigns) do
    BlarpWeb.PageView.render("index.html", assigns)
  end

  def mount(session, socket) do
    :timer.send_interval(1000, self(), :update)

    {:ok, assign(socket, session)}
  end

  def handle_event("pitch_angel_investors", _value, socket) do
    # do the deploy process
    socket
    |> put_flash(:info, "pitch angel investors")

    IO.puts("\r\nSocket:\r\n#{inspect(socket)}\r\n")

    {:noreply, socket}
  end

  def handle_info(:update, socket) do
    {:noreply, assign(socket, steps: socket.assigns.steps + 1)}
  end
end
