require 'spec_helper'

describe Album do
  let(:album) { create(:album) }
  describe "#rank" do
    it "default state is 0" do 
      expect(album.rank).to eq 0
    end
  end
  
  describe "#upvote!" do
    it "raises rank by 1" do
      expect { album.update(upvote: true) }.to change(album, :rank).by(1)
    end
    
    it "sets upvote attr to nil" do
      album.update(upvote: true)
      expect(album.upvote).to be_nil
    end
  end
  
end