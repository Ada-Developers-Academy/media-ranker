require 'spec_helper'

describe MoviesController do
  describe do
    it_behaves_like "a RESTful controller", "movie"
  end
end
