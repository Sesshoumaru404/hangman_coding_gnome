defmodule Procs do
  # c "procs.exs"
  # 1..1000000 |> Enum.each(fn _ -> spawn fn -> nil end end)
  # spawn Procs, :hello, [ ]
  # pid = v(-1)

  # Process.alive? pid


  def hello(count) do
    receive do
      {:crash, reason } ->
        exit(reason)

      {:quit} ->
        IO.puts "Quiting"

      {:add, n} ->
        hello(count + n)

        msg ->
        IO.puts("#{count}: Hello #{inspect msg}")
        hello(count)
      # {:message_type, value} ->
        # code
    end
    # IO.puts("Hello #{name}")
  end

end
