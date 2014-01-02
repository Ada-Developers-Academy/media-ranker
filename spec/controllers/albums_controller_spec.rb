require 'spec_helper'

describe AlbumsController do
  describe do
    it_behaves_like "a RESTful controller", "album"
  end
end