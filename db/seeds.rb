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
image_path = Rails.root.join('app', 'assets', 'images', 'karina_profile.webp')

if File.exist?(image_path)
  # Adjuntar la foto de perfil a Karina usando ActiveStorage
  karina.images.attach(
    io: File.open(image_path),
    filename: 'karina_profile.webp',
    content_type: 'image/webp'
  )

  puts "Usuario Karina creado con éxito y foto de perfil adjunta."
else
  puts "Error: La imagen 'karina_profile.webp' no se encuentra en la ruta especificada."
end
