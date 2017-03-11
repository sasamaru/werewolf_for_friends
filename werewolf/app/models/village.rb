class Village < ApplicationRecord
	has_many :players
	has_many :comments
	#必須項目の設定
	validates :name,
	 presence: { message: "名前が入力されてません"},
	 length: {minimum: 3, message:"3文字以上、20文字以内にしてください"},
	 length: {maximum: 20, message:"3文字以上、20文字以内にしてください"}
end
