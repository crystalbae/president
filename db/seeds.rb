# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

image_list = [
  [ "문재인", "assets/moon.jpeg" ],
  [ "안희정", "assets/ahj.jpeg" ],
  [ "이재명", "assets/ljm.jpeg" ],
  [ "안철수", "assets/acs.jpeg" ],
  [ "심상정", "assets/ssj.jpeg" ],
]

image_list.each do | name, url |
  Image.create( name: name, url: url )
end
