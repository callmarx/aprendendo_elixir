defmodule Bob do

  # Bob answers 'Sure.' if you ask him a question.

  # He answers 'Whoa, chill out!' if you yell at him.

  # He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
  # He says 'Fine. Be that way!' if you address him without actually saying
  # anything.

  # He answers 'Whatever.' to anything else.
  def hey(input) do
    trim = String.trim input
    cond do
      trim == "" ->
        "Fine. Be that way!"
      trim == String.upcase(trim) and trim != String.downcase(trim) ->
        if String.ends_with?(trim, "?"), do: "Calm down, I know what I'm doing!", else: "Whoa, chill out!"
      String.ends_with?(trim, "?") ->
        "Sure."
      true ->
        "Whatever."
    end
    # input = String.trim input
    # cond do
    #   input == "" ->
    #     "Fine. Be that way!"
    #   String.match?(input, ~r/(?=.*[A-Z])^[^a-z]+$/) ->
    #     if String.match?(input, ~r/\?$/), do: "Calm down, I know what I'm doing!", else: "Whoa, chill out!"
    #   String.match?(input, ~r/\?$/) ->
    #     "Sure."
    #   true ->
    #     "Whatever."
    # end
  end
end
