require 'spec_helper'

describe BooksController, type: :controller  do
  it_behaves_like "a RESTful controller", "book"
end
