# == Schema Information
#
# Table name: genders
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Gender < ApplicationRecord

  def self.select_list()
    self.all.collect { |row| [row.name, row.id] }
  end

end
