class Cost < ApplicationRecord
  REGISTRABLE_ATTRIBUTES = %i(
    date
    year(1i) month(2i)
  )

  enum name:{"---":0,食費:1,水道光熱費:2,交通費:3,通信費:4,家賃:5,手数料:6,保険料:7,税金:8,その他:9}

  scope :get_by_name, ->(name){where(name:name)}

  validates :date, presence: true
  validates :name, presence: true
  validates :price, presence: true

end
