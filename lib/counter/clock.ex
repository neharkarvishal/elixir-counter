defmodule Clock do
  def start(func) do
    run(func, 0)
  end

  def run(func, count) do
    func.(count)
    new_count = Counter.Core.inc(count)
    :timer.sleep(1000)
    run(func, new_count)
  end
end
