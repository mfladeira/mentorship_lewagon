# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# seed de usuário full-name e-mail senha e imagem do usuário
# seed de serviço - descrição preço e especialidade
case Rails.env
  when 'development'
    puts 'Destroiyng Database'
    # User.destroy_all
    # Service.destroy_all
    puts 'Creating 20 fake'
  20.times do
     avatar = %w[avatar1.png avatar2.png avatar3.png avatar4.png avatar5.png avatar6.png avatar7.png avatar8.png avatar9.png avatar10.png avatar11.png avatar12.png
                avatar13.png avatar14.png avatar15.png avatar16.png avatar17.png avatar18.png avatar19.png avatar20.png].sample
      user = User.create(
        full_name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "12345678"
      )
    user.photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/avatar/#{avatar}")), filename: "#{avatar}")

    service = Service.create(
      specialty: ["Front-end", "Back-end", "Data scientist", "Product manager", "Devops engineer", "Data engineer", "Software engineer"].sample,
      description: ["10 anos de experiencia, formado no batch #566","5 anos de experiencia, formado no batch #366", "2 anos de experiencia, formado no batch #756",
        "1 ano de experiencia, formado no batch #840", "7 anos de experiencia, formado no batch #496", "4 anos de experiencia, formado no batch #500",
        "8 anos de experiencia, formado no batch #250", "6 anos de experiencia, formado no batch #463", "10 anos de experiencia, formado no batch #566",
        "6 meses de experiencia, formado no batch #860"].sample,
      price: %w[50...280].sample,
      user_id: user.id
    )
  end
  puts 'Finished!'
end


# case Rails.env
# when 'development'
#   puts 'Destroiyng Database'

# puts 'Creating 20 fake services'
# 20.times do
#   service = Service.new(
#     specialty: ["Front-end", "Back-end", "Data scientist", "Product manager", "Devops engineer", "Data engineer", "Software engineer"].sample,
#     description: ["10 anos de experiencia, formado no batch #566","5 anos de experiencia, formado no batch #366", "2 anos de experiencia, formado no batch #756",
#       "1 ano de experiencia, formado no batch #840", "7 anos de experiencia, formado no batch #496", "4 anos de experiencia, formado no batch #500",
#       "8 anos de experiencia, formado no batch #250", "6 anos de experiencia, formado no batch #463", "10 anos de experiencia, formado no batch #566",
#       "6 meses de experiencia, formado no batch #860"].sample,
#     price: %w[5...15].sample
# )
# service.save!
#   end
#   puts 'Finished!'
# end
