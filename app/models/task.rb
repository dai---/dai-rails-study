class Task < ActiveRecord::Base
  #bundle exec rails g model Task title:string done:boolean project:references
  #bundle exec rake db:migrate
  belongs_to :project
  validates :title, presence: { message: "必須項目です" }
  scope :unfinished, -> { where(done: false) }
end
