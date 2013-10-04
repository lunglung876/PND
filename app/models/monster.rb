class Monster < ActiveRecord::Base
  has_attached_file :icon
  belongs_to :team
  def self.search(search)
    if search
      where('attr LIKE ? and category LIKE?', "%#{search[:attr]}%", "%#{search[:category]}%")
    else
      all
    end
  end
  def name_with_id
    "No.#{id} #{name}"
  end
end
