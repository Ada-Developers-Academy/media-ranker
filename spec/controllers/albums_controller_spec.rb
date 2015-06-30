require 'spec_helper'

describe AlbumsController, type: :controller do
  it_behaves_like "a RESTful controller", "album"
end
