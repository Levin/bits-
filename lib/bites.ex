defmodule Bites do
  @moduledoc """
  Documentation for `Bites`.
  """
require Logger

  def set_bit(number, index, value) do
    bits = 
      number
      |> Integer.digits(2)
      
    {updated, _} = 
      bits 
      |> List.update_at(index, fn item -> item = value end)
      |> Enum.join("")
      |> Integer.parse(2)
    {updated, number}

  end

  def toggle_bit(number, index) do
    {bits, _} = 
      number
      |> Integer.digits(2)
      |> Enum.with_index(1)
      |> Enum.map(fn {bit, idx} -> 
        case idx == index do
          true -> 
            case bit do
              1 -> 0
              0 -> 1
            end
          _ -> bit
        end
      end)
      |> Enum.join("")
      |> Integer.parse(2)

    bits
  end

  def highest_set_bit(number) do
    number
    |> Integer.digits(2)
    |> Enum.with_index()
    |> Enum.reject(fn {bit, index} -> bit != 1 end)
    |> List.last()
  end

  def lowest_set_bit(number) do
    number
    |> Integer.digits(2)
    |> Enum.with_index()
    |> Enum.reject(fn {value, idx} -> idx == 1 end)
    |> List.first()
  end

  def get_signed_value(number) do
    number
  end

  def get_unsigned_value(number) do
    


    bits =
      number
      |> Integer.digits(2) 

  end

end
