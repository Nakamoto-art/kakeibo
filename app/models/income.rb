class Income < ApplicationRecord
  REGISTRABLE_ATTRIBUTES = %i(
    date
    year(1i) month(2i)
  )

  enum name:{"---":0,給与:1,ボーナス:2,利息:3,配当金:4,その他:5}
end