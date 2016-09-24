defmodule Chop do

  def guess(actual, min..max) when min < actual and actual < max do
    IO.puts "Is it #{div(max, 2)}"
    guess(actual, div(max, 2), min..max)
  end

  def guess(actual, estimate, min..max) when actual == estimate or actual == min or actual == max do
    IO.puts actual
  end

  def guess(actual, estimate, min..max) when estimate < actual do
    IO.puts "A: Is it #{estimate + div(max - estimate, 2)}"
    guess(actual, estimate + div(max - estimate, 2), estimate+1..max)
  end

  def guess(actual, estimate, min..max) when actual < estimate do
    IO.puts "B: Is it #{div(estimate, 2)}"
    guess(actual, div(estimate, 2), min..estimate-1)
  end

end

Chop.guess(273, 1..1000)
