require 'rails_helper'

RSpec.describe "tracks/new", type: :view do
  before(:each) do
    assign(:track, Track.new(
      name: "MyString",
      lyric: "MyText",
      audio: nil,
      album: nil,
      gender: nil
    ))
  end

  it "renders new track form" do
    render

    assert_select "form[action=?][method=?]", tracks_path, "post" do

      assert_select "input[name=?]", "track[name]"

      assert_select "textarea[name=?]", "track[lyric]"

      assert_select "input[name=?]", "track[audio]"

      assert_select "input[name=?]", "track[album_id]"

      assert_select "input[name=?]", "track[gender_id]"
    end
  end
end
