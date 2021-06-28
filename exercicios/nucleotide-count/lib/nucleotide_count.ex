defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count(charlist(), char()) :: non_neg_integer()
  def count(strand, nucleotide) do
    Enum.count(strand, fn char -> char == nucleotide end )
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram(charlist()) :: map()
  def histogram(strand) do
    ## Solution 1:
    # Map.new(@nucleotides, fn key -> {key, count(strand, key)} end)

    ## Solution 2:
    result = Map.new(@nucleotides, &{&1, 0})
    Enum.reduce(
      strand,
      result,
      fn (char, acc) ->
        Map.update!(acc, char, &(&1 + 1))
      end
    )
  end
end
