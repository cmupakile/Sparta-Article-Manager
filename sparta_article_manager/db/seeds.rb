# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

picture1 = Picture.create({ image: 'image1.png', article: '1Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et...'})
picture2 = Picture.create({ image: 'image2.png', article: '2Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et...'})
picture3 = Picture.create({ image: 'image3.png', article: '3Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et...'})
picture4 = Picture.create({ image: 'image4.png', article: '4Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et...'})

article1 = Article.create({ body: 'text1 - a piece of filler data on the app. a piece of filler data on the app. a piece of filler data on the app. so on and so forth'})
article2 = Article.create({ body: 'text2 - a piece of filler data on the app. a piece of filler data on the app. a piece of filler data on the app. so on and so forth'})
article3 = Article.create({ body: 'text3 - a piece of filler data on the app. a piece of filler data on the app. a piece of filler data on the app. so on and so forth'})
article4 = Article.create({ body: 'text4 - a piece of filler data on the app. a piece of filler data on the app. a piece of filler data on the app. so on and so forth'})

article1.picture = picture1
article1.save
article2.picture = picture2
article.save
article3.picture = picture3
article.save
article4.picture = picture4
article.save
