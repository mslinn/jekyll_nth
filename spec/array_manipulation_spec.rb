require 'jekyll'
require_relative 'spec_helper'

RSpec.describe(ArrayManipulation) do
  include described_class

  it 'returns the usual Ruby value' do
    array = [1, 2, 3, 4, 5]
    expect(nth(array, -1)).to eq(5)
    expect(nth(array, 0)).to eq(1)
    expect(nth(array, 2)).to eq(3)
    expect { nth(array, 99) }
      .to output(/.*/).to_stderr
      .and raise_error(SystemExit) do |error|
        expect(error.status).to eq(1)
        expect(error.message).to match(/only 5 items, but item 99 was requested/)
      end
    expect { nth([], 1) }
      .to output(/.*/).to_stderr
      .and raise_error(SystemExit) do |error|
        expect(error.status).to eq(1)
        expect(error.message).to match(/array passed to nth was empty/)
      end
  end

  it 'returns normal tail' do
    expect(tail([1, 2, 3, 4, 5])).to eq([2, 3, 4, 5])
    expect(tail([1])).to eq([])
    expect { tail([]) }
      .to output(/.*/).to_stderr
      .and raise_error(SystemExit) do |error|
        expect(error.status).to eq(1)
        expect(error.message).to match(/array passed to tail was empty/)
      end
  end
end
