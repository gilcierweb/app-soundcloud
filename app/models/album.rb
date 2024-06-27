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
class Album < ApplicationRecord
  belongs_to :artist
  has_one_attached :cover
  has_one_attached :cover_back

  def self.select_list()
    self.all.collect { |row| [row.name, row.id] }
  end

end
