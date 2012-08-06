require 'spec_helper'

describe Profile do

  context "CRUD" do

    before(:each) do
       @profile = Profile.new(name: "Lucas", nickname: "Lucas Pintor", cell_phone: "(35) 000-000", phone: "(35)000-000", experience: "Ha 20 anos trabalhando com pintura")

    end
    context "create" do

      it "should be saved" do
        @profile.save.should be_true
      end

    end

    context "validations" do
      it "should validate presence of" do
          @profile.valid?.should be_true
      end
    end
  end
end
