class Comment < ApplicationRecord
  belongs_to :village
  belongs_to :player
  validates :content,  presence: true
end
