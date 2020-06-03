# namespace :dev do
#   desc "TODO"
#   task setup: :environment do
#   end

# end

namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando 100 contatos fake"
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 65)
      )
    end
    puts "Contatos cadastrados com sucesso"
  end
end