require 'spec_helper'

describe "Player pages" do

  subject { page }

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account"}

    describe "with invalid information" do
      it "should not create a player" do
        expect { click_button submit }.not_to change(Player, :count)
      end
    end

    describe "with vaild information" do
      before do
        fill_in "Name",           with: "Example Player"
        fill_in "Email",          with: "player@example.com"
        fill_in "Password",       with: "foobar"
        fill_in "Confirmation",   with: "foobar"
      end

      it "should create a user" do
         expect { click_button submit }.to_change(Player, :count).by(1)
      end
    end
  end
end
