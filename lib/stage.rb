class Stage < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_many :performances
>>>>>>> e923f23cc3a396420e0ea1f8e30576f4aeecfa06
  has_many :artists, through: :performances
  validates :name, {:presence => true, :uniqueness => true}
  before_save :capitalize_name

private
  def capitalize_name
    self.name=(name.split(/(\W)/).map(&:capitalize).join)
  end
end
