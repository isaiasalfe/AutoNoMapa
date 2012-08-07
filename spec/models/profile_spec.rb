require 'spec_helper'

describe Profile do

  fixtures :profiles

  context "CRUD" do

    before(:each) do
       @profile = Profile.new(valid_profile_hash)

    end

    it "should be saved" do
      @profile.save.should be_true
    end

    it "should update first profile" do
      first_profile = profiles(:first_profile)
      first_profile.update_attributes(nickname: "New nockname").should be_true
    end

    it "should destroy first profile" do
      first_profile = profiles(:first_profile)
      first_profile.destroy.should be_true
      expect {Profile.find(first_profile.id)}.to raise_error(ActiveRecord::RecordNotFound)
    end

    context "validations" do
      it "should validates presence of name" do
        @profile.name = ""
        @profile.invalid?(:name).should be_true
        @profile.errors[:name].should eql(["can't be blank"])
        @profile.should_not be_valid
      end

      it "should validates presence of cell phone" do
        @profile.cell_phone = ""
        @profile.invalid?(:cell_phone).should be_true
        @profile.errors[:cell_phone].should eql(["can't be blank"])
        @profile.should_not be_valid
      end

      it "should validates presence of phone" do
        @profile.phone =""
        @profile.invalid?(:phone).should be_true
        @profile.errors[:phone].should eql(["can't be blank"])
        @profile.should_not be_valid
      end

      it "should validates presence of experience" do
        @profile.experience =""
        @profile.invalid?(:experiece).should be_true
        @profile.errors[:experience].should eql(["can't be blank"])
        @profile.should_not be_valid
      end
    end
  end

  def valid_profile_hash
    {name: "Lucas", nickname: "Lucas Pintor", cell_phone: "(35) 000-000", phone: "(35)000-000", experience: "Ha 20 anos trabalhando com pintura"}
  end
end
