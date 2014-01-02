require 'spec_helper'

describe Book do
  it_behaves_like "rankable", 'book'
end
