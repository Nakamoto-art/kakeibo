FactoryBot.define do
  factory :income do
    date        {Faker::Date.between_except(from: 3.years.ago, to: 1.year.from_now, excepted: Date.today)}
    name        {"給与"}
    price       {"300000"}
    description {"テストです"}
  end
end