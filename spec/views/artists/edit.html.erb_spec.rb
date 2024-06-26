require 'rails_helper'

RSpec.describe "artists/edit", type: :view do
  let(:artist) {
    Artist.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:artist, artist)
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(artist), "post" do

      assert_select "input[name=?]", "artist[name]"
    end
  end
end
