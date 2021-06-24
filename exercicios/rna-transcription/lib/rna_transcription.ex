defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @dna_to_rna %{
    # 'G' -> 'C'
    71 => 67,

    # 'C' -> 'G'
    67 => 71,

    # 'T' -> 'A'
    84 => 65,

    # 'A' -> 'U'
    65 => 85
  }

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna,
      fn char ->
        @dna_to_rna[char]
      end
    )
  end
end
