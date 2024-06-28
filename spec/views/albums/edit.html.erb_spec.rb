require 'rails_helper'

RSpec.describe "albums/edit", type: :view do
  let(:album) {
    Album.create!(
      title: "MyString",
      description: "MyText",
      cover: nil,
      cover_back: nil,
      rating: 1,
      artist: nil
    )
  }

  before(:each) do
    assign(:album, album)
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(album), "post" do

      assert_select "input[name=?]", "album[title]"

      assert_select "textarea[name=?]", "album[description]"

      assert_select "input[name=?]", "album[cover]"

      assert_select "input[name=?]", "album[cover_back]"

      assert_select "input[name=?]", "album[rating]"

      assert_select "input[name=?]", "album[artist_id]"
    end
  end
end
