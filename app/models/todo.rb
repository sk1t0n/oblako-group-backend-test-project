class Todo < ApplicationRecord
  belongs_to :project

  validates :text, presence: true, length: { minimum: 5 }
end
