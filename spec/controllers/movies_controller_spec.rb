require 'spec_helper'

describe MoviesController, type: :controller  do
  it_behaves_like "a RESTful controller", "movie"
end
