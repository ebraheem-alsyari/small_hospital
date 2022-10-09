class Detail < ApplicationRecord

  scope :published, ->(timestamp = Time.now) { where('created_at <= ?', timestamp) }
  scope :unpublished, ->(timestamp = Time.now) { where('created_at IS NULL OR created_at > ?',
  timestamp) }
  validates :name, presence: true
  validates :age, numericality: { greater_than: 12 }

  
  # PHONE_REGEX = /\A\(\d{3}\)\d{3}-\d{4}\z/
  # validates :phone_number, format: { with: PHONE_REGEX }

  # validates :phone_number.starts_with? '77'

  def self.search(search)
    if search
    where(["name like ?","%#{search}%"])
    else
      # find(:all)
    end
  end

  


  def validate(record)
    if record.name.starts_with? 'A'
    record.errors[:name] << 'Need a phone_number starting with A please!'
    end
  end

end





# def self.search(search)
#   if search
#     where(["name like ?","%#{search}%"])
#     search
#   else
#     # notice: 'Can not be found'
#   end
# end