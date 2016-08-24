require "rails_helper"


RSpec.describe ApplicationController do

  it 'checks if trim() removes .0 from decimal numbers' do
    expect(@controller.trim(1.00)==1).to eq(true)
    expect(@controller.trim(0.10)==0.1).to eq(true)
  end

  describe "Checks if a string list can be an integer list" do

    it "checks for list with integer numbers" do
      expect(@controller.is_list_integer('1,32,54')).to eq true
    end

    it "checks for list with decimal numbers" do
      expect(@controller.is_list_integer('1,32,54.66,0.0001, 328.2')).to eq true
    end

    it "checks for list with strings (with numbers as well) -> Shouldn't be a integer list" do
      expect(@controller.is_list_integer('aa, fea, abc, xyz, wait, 101')).to eq false
    end

  end

end
