class Detail < ApplicationRecord

  scope :published, ->(timestamp = Time.now) { where('created_at <= ?', timestamp) }
  scope :unpublished, ->(timestamp = Time.now) { where('created_at IS NULL OR created_at > ?',
  timestamp) }


end





