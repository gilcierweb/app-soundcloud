require 'rails_helper'

RSpec.describe "tracks/index", type: :view do
  before(:each) do
    assign(:tracks, [
      Track.create!(
        name: "Name",
        lyric: "MyText",
        audio: nil,
        album: nil,
        gender: nil
      ),
      Track.create!(
        name: "Name",
        lyric: "MyText",
        audio: nil,
        album: nil,
        gender: nil
      )
    ])
  end

  it "renders a list of tracks" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
