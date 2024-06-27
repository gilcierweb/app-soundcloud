require 'rails_helper'

RSpec.describe "tracks/edit", type: :view do
  let(:track) {
    Track.create!(
      name: "MyString",
      lyric: "MyText",
      audio: nil,
      album: nil,
      gender: nil
    )
  }

  before(:each) do
    assign(:track, track)
  end

  it "renders the edit track form" do
    render

    assert_select "form[action=?][method=?]", track_path(track), "post" do

      assert_select "input[name=?]", "track[name]"

      assert_select "textarea[name=?]", "track[lyric]"

      assert_select "input[name=?]", "track[audio]"

      assert_select "input[name=?]", "track[album_id]"

      assert_select "input[name=?]", "track[gender_id]"
    end
  end
end
