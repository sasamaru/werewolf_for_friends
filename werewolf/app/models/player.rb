class Player < ApplicationRecord
	belongs_to :village
	has_many :comments
	validates :name,
		presence: { message: "名前を入力してください"}

	mount_uploader :image, ImageUploader



end
