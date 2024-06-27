require 'rails_helper'

RSpec.describe "albums/show", type: :view do
  before(:each) do
    assign(:album, Album.create!(
      itle: "Itle",
      description: "MyText",
      cover: nil,
      cover_back: nil,
      rating: 2,
      artist: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Itle/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
