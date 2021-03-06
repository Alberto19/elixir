defmodule Identicon do
  @moduledoc """
  Documentation for Identicon.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Identicon.hello
      :world

  """
  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end
  
  def build_grid(%Identicon.Image{hex: hex} =image) do
    grid = 
      hex
      |> Enum.chunk(3)
      |> Enum.map(&mirrow_row/1)
      |> List.flatten
      |> Enum.with_index

    %Identicon.Image{image | grid: grid}
  end

  def mirrow_row(row) do
    # [145, 46, 200]
    [first, second | _tail] = row  

    # return [145, 46, 200, 46, 145]
    row ++ [second, first]
  end

end
