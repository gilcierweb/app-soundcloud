# == Schema Information
#
# Table name: artists
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artist < ApplicationRecord

  def self.select_list()
    self.all.collect { |row| [row.name, row.id] }
  end

end
