require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        title: "tItle",
        description: "MyText",
        cover: nil,
        cover_back: nil,
        rating: 2,
        artist: nil
      ),
      Album.create!(
        title: "tItle",
        description: "MyText",
        cover: nil,
        cover_back: nil,
        rating: 2,
        artist: nil
      )
    ])
  end

  it "renders a list of albums" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("tItle".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
