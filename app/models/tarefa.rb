class Tarefa < ApplicationRecord
  validates :name, presence: true, length: { in: 5..50 }
  validates :description, presence: true, length: { in: 10..500 }
  validates :status, inclusion: [true, false]
end
