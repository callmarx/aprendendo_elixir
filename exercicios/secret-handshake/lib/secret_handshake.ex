defmodule SecretHandshake do
  use Bitwise, only_operators: true

  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @binary_to_handshake %{
    1 => "wink",
    2 => "double blink",
    4 => "close your eyes",
    8 => "jump"
  }
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    result = Enum.reduce(@binary_to_handshake, [], fn {command, action}, acc ->
      if (code &&& command) != 0, do: acc ++ [action], else: acc
    end)

    if (code &&& 16) != 0, do: Enum.reverse(result), else: result
  end
end
