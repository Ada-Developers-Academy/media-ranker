require 'spec_helper'

shared_examples "a RESTful controller" do |record_name|
  let!(:record) { create(record_name.to_sym) }
  describe "GET 'show'" do
    let!(:request) { get :show, id: record.id }
  
    it "is successful" do
      expect(response).to be_successful
    end
  
    it "assigns record" do
      expect(assigns[record_name.to_sym]).to eq record
    end
  end

  describe "GET 'index'" do
    let!(:request) { get :index }
    it "is successful" do
      expect(response).to be_successful
    end
  
    it "assigns a record" do
      expect(assigns["#{record_name}s".to_sym].first).to eq record
    end
  end

  describe "GET 'new'" do
    let!(:request) { get :new }
    it "is successful" do
      expect(response).to be_successful
    end
  
    it "assigns the record" do
      expect(assigns(record_name.to_sym)).to be_a record.class
    end
  end

  describe "GET 'edit'" do
    let!(:request) { get :edit, id: record.id }
    it "is successful" do
      expect(response).to be_successful
    end
  
    it "assigns the record" do
      expect(assigns(record_name.to_sym)).to be_a record.class
    end
  end

  describe "POST 'create'" do
  
    context "when it saves" do
      let!(:request) { post :create, "#{record_name}" => record.attributes }
      it "assigns the saved record" do
        expect(assigns[record_name.to_sym].new_record?).to be_false
      end
  
      it "redirects to the record" do
        expect(response).to redirect_to assigns(record_name.to_sym)
      end
    end
  
    context "when it doesn't save" do
      let!(:request) { post :create, "#{record_name}" => {description: "TEST"} }
    
      it "renders the new template" do
        expect(response).to render_template :new
      end
    end
  
  end

  describe "PATCH 'update'" do
    context "when it saves" do
      let!(:request) { patch :update, id: record.id, "#{record_name}" => record.attributes }
      it "assigns the saved record" do
        expect(assigns(record_name.to_sym).new_record?).to be_false
      end
  
      it "redirects to record" do
        expect(response).to redirect_to assigns(record_name.to_sym)
      end
    end
  
    context "when it doesn't save" do
      let!(:request) { patch :update, id: record.id, "#{record_name}" => {name: nil} }
    
      it "renders the edit template" do
        expect(response).to render_template :edit
      end
    end
  end
end