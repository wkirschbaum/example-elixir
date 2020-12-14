defmodule ExampleTest do
  use ExUnit.Case
  doctest Example

  test "greets the world" do
    IO.puts "greets the world"
    assert Example.hello() == :world
  end

  test "another test" do
    IO.puts "another test"
    assert false == true
  end

  describe "some description" do
    test "one" do
      IO.puts "one"
      assert true == true
    end

    test "two" do
      IO.puts "two"
      assert false == true
    end
  end
end
