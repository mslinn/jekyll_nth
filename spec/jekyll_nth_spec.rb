# frozen_string_literal: true

require "jekyll"
require_relative "../lib/jekyll_nth"

RSpec.describe(Nth) do
  include Nth

  let(:config) { instance_double("Configuration") }
  let(:context) do
    context_ = instance_double("Liquid::Context")
    context_.config = config
    context_
  end

  it "is created properly" do
    array = [1, 2, 3, 4, 5]
    expect(nth(array, 0)).to eq(1)
    expect(nth(array, 2)).to eq(3)
  end
end
