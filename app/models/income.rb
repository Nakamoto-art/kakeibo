class Income < ApplicationRecord
  belongs_to :user

  REGISTRABLE_ATTRIBUTES = %i(
    date
    year(1i) month(2i)
  )

  enum name:{"---":0,給与:1,ボーナス:2,利息:3,配当金:4,その他:5}

  scope :get_by_name, ->(name){where(name:name)}

  validates :date, presence: true
  validates :date, format: { with: /\d/ }

  validates :name, presence: true
  validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }

  validates :price, presence: true
  validates :price,format: { with: /\d/ }
  validates :name, presence: true
  validates :price, presence: true
end