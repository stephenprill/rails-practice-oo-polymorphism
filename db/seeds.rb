User.delete_all
Photo.delete_all
Company.delete_all

30.times do
  user = User.create!(
    email: Faker::Internet.safe_email,
    name: Faker::Name.name,
    created_at: Faker::Date.between(2.years.ago, Date.today)
  )

  rand(3).times do
    Company.create!(
      name: Faker::Company.name,
      created_by_id: user.id,
      created_at: Faker::Date.between(2.years.ago, Date.today)
    )
  end

  rand(3).times do
    Photo.create!(
      url: "http://lorempixel.com/g/40/40/?cache=#{rand}",
      created_by_id: user.id,
      created_at: Faker::Date.between(2.years.ago, Date.today)
    )
  end
end
