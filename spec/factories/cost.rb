FactoryBot.define do
  factory :cost do
    date        {Faker::Date.between_except(from: 3.years.ago, to: 1.year.from_now, excepted: Date.today)}
    name        {"家賃"}
    price       {"100000"}
    description {"テストです"}
  end
end