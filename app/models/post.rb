class Post < ActiveRecord::Base
  # validates :title, allow_blank: false
  validates :title, length: { minimum: 1 }
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

end
