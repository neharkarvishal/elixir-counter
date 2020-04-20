defmodule Counter do
  def start(init_count) do
    spawn(fn() -> Counter.Server.run(init_count) end)
  end

  def tick(pid) do
    send pid, {:tick, self()}
  end

  def state(pid) do
    send pid, {:state, self()}
    receive do
      {:count, value} -> value
    end
  end
end
