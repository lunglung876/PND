class Monster < ActiveRecord::Base
  has_attached_file :icon
  def self.search(search)
    if search
      where('attr LIKE ? and category LIKE?', "%#{search[:attr]}%", "%#{search[:category]}%")
    else
      all
    end
  end
end
