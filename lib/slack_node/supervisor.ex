defmodule SlackNode.Supervisor do
  use Supervisor
  @name SlackNode.Supervisor

  def start_link() do
    Supervisor.start_link(__MODULE__, [], name: @name)
  end

  def init([]) do
    children = [
      worker(CoapNode.Server, [[],[]])
    ]

    supervise(children ,strategy: :simple_one_for_one)
  end

end
