# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# db/seeds.rb

# Elimina cualquier usuario existente con el mismo email
User.find_by(email: 'karina@karipic.com')&.destroy

# Crear el usuario Karina con el rol 'karina'
karina = User.create!(
  email: 'karina@karipic.com',
  password: '123456',
  password_confirmation: '123456',
  name: 'Karina',
  role: :karina
)

# Adjuntar la foto de perfil a Karina usando ActiveStorage
karina.photo.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'karina_profile.webp')),
  filename: 'karina_profile.webp'
)

# Verifica que el usuario y su foto hayan sido creados correctamente
puts "Karina created with photo: #{karina.photo.attached?}"

