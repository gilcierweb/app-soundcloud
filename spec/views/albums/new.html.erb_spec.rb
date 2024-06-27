require 'rails_helper'

RSpec.describe "albums/new", type: :view do
  before(:each) do
    assign(:album, Album.new(
      itle: "MyString",
      description: "MyText",
      cover: nil,
      cover_back: nil,
      rating: 1,
      artist: nil
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", _albums_path, "post" do

      assert_select "input[name=?]", "album[itle]"

      assert_select "textarea[name=?]", "album[description]"

      assert_select "input[name=?]", "album[cover]"

      assert_select "input[name=?]", "album[cover_back]"

      assert_select "input[name=?]", "album[rating]"

      assert_select "input[name=?]", "album[artist_id]"
    end
  end
end
