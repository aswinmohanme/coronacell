# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Panchayats
Panchayat.create([{name: 'Adoor Municipality'},  {name: 'Pathanamthitta Municipality'},  {name: 'Thiruvalla Municipality'},  {name: 'Pandalam Municipality'},  {name: 'Chittar'},  {name: 'Naranammoozhy'},  {name: 'Ranni'},  {name: 'Ranni-Angadi'},  {name: 'Ranni-Pazhavangadi'},  {name: 'Ranni-Perunad'},  {name: 'Seethathode'},  {name: 'Vadasserikkara'},  {name: 'Vechoochira'},  {name: 'Kadapara'},  {name: 'Kuttoor'},  {name: 'Nedumpram'},  {name: 'Niranam'},  {name: 'Peringara'},  {name: 'Kalanjoor'},  {name: 'Kodumon'},  {name: 'Enadimangalam'},  {name: 'Ezhamkulam'},  {name: 'Erathu'},  {name: 'Kadampanad'},  {name: 'Pallickal'},  {name: 'Aranmula'},  {name: 'Kulanada'},  {name: 'Mezhuveli'},  {name: 'Pandalam-Thekkekkara'},  {name: 'Thumpamon'},  {name: 'Anicad'},  {name: 'Kallooppara'},  {name: 'Kaviyoor'},  {name: 'Kottanadu'},  {name: 'Kottangal'},  {name: 'Kunnamthanam'},  {name: 'Mallappally'},  {name: 'Aruvappulam'},  {name: 'Konni'},  {name: 'Malayalappuzha'},  {name: 'Mylapra'},  {name: 'Pramadom'},  {name: 'Thannithode'},  {name: 'Vallicode'},  {name: 'Ayiroor'},  {name: 'Eraviperoor'},  {name: 'Ezhumattoor'},  {name: 'Koipuram'},  {name: 'Puramattom'},  {name: 'Thottapuzhasery'},  {name: 'Chenneerkara'},  {name: 'Cherukole'},  {name: 'Elanthur'},  {name: 'Kozhencherry'},  {name: 'Mallapuzhasserry'},  {name: 'Naranganam'},  {name: 'Omallur'}])

User.create({email: "admin@gmail.com", password: "pass123", password_confirmation: "pass123", role: :admin})
