defmodule Fakehook.Loghook do
  use Plug.Builder

  require Logger

  plug(Plug.Parsers, parsers: [:json], pass: ["application/json"], json_decoder: Jason)
  plug(:loghook)

  def loghook(conn, _opts) do
    Logger.info(inspect(conn))

    send_resp(conn, 200, "")
  end
end
