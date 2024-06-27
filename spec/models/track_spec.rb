# == Schema Information
#
# Table name: tracks
#
#  id         :bigint           not null, primary key
#  lyric      :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint           not null
#  gender_id  :bigint           not null
#
# Indexes
#
#  index_tracks_on_album_id   (album_id)
#  index_tracks_on_gender_id  (gender_id)
#
# Foreign Keys
#
#  fk_rails_...  (album_id => albums.id)
#  fk_rails_...  (gender_id => genders.id)
#
require 'rails_helper'

RSpec.describe Track, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
