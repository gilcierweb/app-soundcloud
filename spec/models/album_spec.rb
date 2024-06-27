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
require 'rails_helper'

RSpec.describe Album, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
