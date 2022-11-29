defmodule TextClient do
  # alias JasonVendored.Encoder.ElixirLS.LanguageServer.Protocol.TextEdit

  @spec start() :: :ok
  defdelegate start(), to: TextClient.Impl.Player
end
