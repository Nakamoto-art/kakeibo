class Income < ApplicationRecord
  REGISTRABLE_ATTRIBUTES = %i(
    date
    year(1i) month(2i)
  )

  enum name:{"---":0,給与:1,ボーナス:2,利息:3,配当金:4,その他:5}

  scope :get_by_name, ->(name){where(name:name)}

  validates :date, presence: true
  validates :name, presence: true
  validates :price, presence: true

end