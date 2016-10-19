defmodule SlackNode do
  use Application

  def start do
    IO.puts "SlackNode.start"
    SlackNode.Supervisor.start_link
  end

end
