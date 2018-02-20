class UserSecondFactor < ActiveRecord::Base
  belongs_to :user
end

# == Schema Information
#
# Table name: user_second_factors
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  method     :string
#  data       :string
#  enabled    :boolean          default(FALSE), not null
#  last_used  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
