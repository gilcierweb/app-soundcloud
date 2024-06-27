# == Schema Information
#
# Table name: albums
#
#  id          :bigint           not null, primary key
#  description :text
#  rating      :integer
#  release     :date
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  artist_id   :bigint           not null
#
# Indexes
#
#  index_albums_on_artist_id  (artist_id)
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => artists.id)
#
FactoryBot.define do
  factory :album do
    title { "MyString" }
    description { "MyText" }
    release { "2024-06-26" }
    cover { nil }
    cover_back { nil }
    rating { 1 }
    artist { nil }
  end
end
