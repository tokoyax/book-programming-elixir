defmodule Chop do

  def guess(actual, min..max) when actual == min, do: IO.puts min

  def guess(actual, min..max) when actual == max, do: IO.puts max

  def guess(actual, min..max) when min < actual and actual < max do
    estimate = div(max, 2)
    IO.puts "Is it #{estimate}"
    IO.puts "#{actual} #{estimate} #{min}..#{max}"
    guess(actual, estimate, min..max)
  end

  def guess(actual, estimate, min..max) when estimate == actual or estimate == min or estimate == max do
    IO.puts actual
  end

  def guess(actual, estimate, min..max) when estimate < actual do
    min = estimate + 1
    estimate = estimate + div(max-estimate, 2)
    IO.puts "Is it #{estimate}"
    IO.puts "#{actual} #{estimate} #{min}..#{max}"
    guess(actual, estimate, min..max)
  end

  def guess(actual, estimate, min..max) when actual < estimate do
    max = estimate - 1
    estimate = div(estimate, 2)
    IO.puts "Is it #{estimate}"
    IO.puts "#{actual} #{estimate} #{min}..#{max}"
    guess(actual, estimate, min..max)
  end
end

Chop.guess(273, 1..1000)
