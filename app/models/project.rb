class Project < ActiveRecord::Base
    belongs_to :user
    validates :job, presence: true
    validates :budget, presence: true
end