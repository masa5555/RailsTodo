class Must < ApplicationRecord
  validates :task, {presence: true}
  validates :deadline, {presence: true}
end
