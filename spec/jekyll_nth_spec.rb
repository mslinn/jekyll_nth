# frozen_string_literal: true

require "jekyll"
require_relative "../lib/jekyll_nth"

RSpec.describe(ArrayManipulation) do
  include ArrayManipulation

  let(:config) { instance_double("Configuration") }
  let(:context) do
    context_ = instance_double("Liquid::Context")
    context_.config = config
    context_
  end

  it "returns the usual Ruby value" do
    array = [1, 2, 3, 4, 5]
    expect(nth(array, -1)).to eq(5)
    expect(nth(array, 0)).to eq(1)
    expect(nth(array, 2)).to eq(3)
    expect(nth(array, 99)).to raise_exception
    expect(nth([], 1)).to raise_exception
  end

  it "returns normal tail" do
    expect(tail([1, 2, 3, 4, 5])).to eq([2, 3, 4, 5])
    expect(tail([1])).to eq([])
    expect(tail([])).to raise_exception
  end
end
