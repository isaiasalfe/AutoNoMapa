require 'spec_helper'

describe Category do

  context "CRUD" do

   context "create" do
      it "should be save" do
          category = Category.new(name: "Pedreiro")
          category.save.should be_true
      end
    end

    context "validation" do
      it "should not be saved" do
          category = Category.new
          category.valid?.should be_false
          category.save.should_not be_true
      end
    end

    context "update" do
      pending "change datas"
    end

    context "destroy" do
      pending "some category"
    end

  end

end
