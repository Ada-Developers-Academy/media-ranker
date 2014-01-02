require 'spec_helper'

shared_examples "rankable" do |name|
  let(:record) { create(name.to_sym) }
  
  describe "#rank" do
    it "default state is 0" do 
      expect(record.rank).to eq 0
    end
  end
  
  describe "#upvote!" do
    it "raises rank by 1" do
      expect { record.update(upvote: true) }.to change(record, :rank).by(1)
    end
    
    it "sets upvote attr to nil" do
      record.update(upvote: true)
      expect(record.upvote).to be_nil
    end
  end
end