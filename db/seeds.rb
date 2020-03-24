User.create!(
  nickname: '太郎',
  email: 'aaa@aaa',
  password: '111111',
  password_confirmation: '111111',
  created_at: "2020-01-11 02:33:34",
  updated_at: "2020-01-11 02:33:34"
)

User.all.each do |user|
  user.incomes.create!(
    [
      {
        date: "2020-01-01",
        name: "給与",
        price: "300000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-02-01",
        name: "給与",
        price: "300000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-03-01",
        name: "給与",
        price: "300000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-04-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-05-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-05-01",
        name: "利息",
        price: "70000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-06-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-07-01",
        name: "配当金",
        price: "70000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-07-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-08-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-08-01",
        name: "ボーナス",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-09-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-10-01",
        name: "給与",
        price: "300000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-11-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-11-01",
        name: "その他",
        price: "120000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-12-01",
        name: "給与",
        price: "500000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-06-01",
        name: "ボーナス",
        price: "300000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-09-01",
        name: "利息",
        price: "60000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-10-01",
        name: "配当金",
        price: "10000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-03-01",
        name: "その他",
        price: "50000",
        description: "テストですテストですテストです",
        user_id: "1"
      }
    ]
  )
end

User.all.each do |user|
  user.costs.create!(
    [
      {
        date: "2020-01-01",
        name: "食費",
        price: "20000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-02-01",
        name: "水道光熱費",
        price: "50000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-03-01",
        name: "交通費",
        price: "15000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-04-01",
        name: "通信費",
        price: "25000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-05-01",
        name: "家賃",
        price: "100000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-06-01",
        name: "その他",
        price: "45000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-07-01",
        name: "食費",
        price: "50000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-08-01",
        name: "水道光熱費",
        price: "90000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-09-01",
        name: "交通費",
        price: "35000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-10-01",
        name: "通信費",
        price: "55000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-11-01",
        name: "家賃",
        price: "100000",
        description: "テストですテストですテストです",
        user_id: "1"
      },
      {
        date: "2020-12-01",
        name: "その他",
        price: "95000",
        description: "テストですテストですテストです",
        user_id: "1"
      }
    ]
  )
end