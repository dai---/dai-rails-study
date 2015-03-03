class Project < ActiveRecord::Base
  has_many :tasks
  #validates :title, presence: true
  #日本語のメッセージが表示されるようにする
  validates :title, presence: { message: "必須項目です"},
  length: { minimum: 3, message: "3文字以上で入力してください。"}
end
