require 'spec_helper'

describe BooksController do
  describe do
    it_behaves_like "a RESTful controller", "book"
  end
end
