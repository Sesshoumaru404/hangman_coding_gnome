defmodule Dictionary.Runtime.Application do
# alias Task.Supervisor

  use Supervisor

  def start(_type, _args) do
    children = [
     {Dictionary.Runtime.Server, []}
    ]

    opts =[
      name: Dictionary.Runtime.Supervisor,
      strategy: :one_for_one
    ]

    Supervisor.start_link(children, opts)

  end
end
