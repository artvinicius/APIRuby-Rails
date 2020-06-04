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

# rails s > LEVANTA API
# rake db:migrate > CONF BANCO
# rails dev:setup > Rerar contatos falkes

# curl http://localhost:3000/contacts -I
# curl http://localhost:3000/contacts/1 -I
# curl http://localhost:3000/contacts -i -X POST -d "contact[name]=Connor, contact[email]=connor123@mail.com, contact[birthdate]=2020-02-03"
# curl http://localhost:3000/contacts/1 -i -X PUT-d "contact[name]=Connor, contact[email]=connor123@mail.com, contact[birthdate]=2020-02-03"
# curl http://localhost:3000/contacts/1 -i -X DELETE
