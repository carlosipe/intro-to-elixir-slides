defmodule Table do
  def ping do
    receive do
      :ping -> IO.puts "received ping"
    end
  end

  def start do
    spawn(&Table.ping/0)
  end
end
