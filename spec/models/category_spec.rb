require 'spec_helper'

describe Category do
  context "new" do
    it "should be save" do
        category = Category.new(name: "Pedreiro")
        category.save.should be_true
    end
  end

  context "validation" do
    it "should not be saved" do
        category = Category.new
        category.save.should_not be_true
    end
  end
end
