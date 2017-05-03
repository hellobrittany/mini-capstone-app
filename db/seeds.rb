# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.new(
											name: "Sauvignon Blanc", 
											image: "https://www.masoncellars.com/assets/easyimage/4/4b33eaa150f94f3b6f169e68d716ff6b.png", 
											description: "A delicious dry white wine that is a good idea to drink on a hot summer day.", 
											price: 12
											)
product.save

product = Product.new(
											name: "Pinot Grigio", 
											image: "http://www.tizianowine.com/wp-content/uploads/2015/10/tiziano-pinot-grigio.jpg", 
											description: "A very refreshing dry white wine that is crisp and bright with floral notes, good for a hot summer day.", 
											price: 13
											)
product.save

product = Product.new(
											name: "Pinot Noir", 
											image: "http://www.totalwine.com/media/sys_master/twmmedia/hcf/h99/10027530027038.png", 
											description: "A medium bodied red wine that is easy to drink and goes with a variety of foods.", 
											price: 20
											)
product.save

product = Product.new(
											name: "Malbec", 
											image: "http://www.totalwine.com/media/sys_master/twmmedia/h40/hec/9382840664094.png", 
											description: "A purple grape variety used in making red wine. The grapes tend to have an inky dark color and robust tannins, and are known as one of the six grapes allowed in the blend of red Bordeaux wine.", 
											price: 17
											)
product.save

product = Product.new(
											name: "Sangiovese", 
											image: "http://www.glenora.com/assets/images/products/large/250x450JPEG_2711SagioveseNoBackground159.jpg", 
											description: "Though it is the grape of most of central Italy from Romagna down to Lazio, Campania and Sicily, outside Italy it is most famous as the only component of Brunello di Montalcino and Rosso di Montalcino.", 
											price: 21
											)
product.save

product = Product.new(
											name: "Viognier", 
											image: "http://f1.wine-searcher.net/images/labels/17/65/jorian-hill-viognier-santa-barbara-county-usa-10151765.jpg", 
											description: "is a white wine grape variety. It is the only permitted grape for the French wine Condrieu in the Rhône Valley. ... Like Chardonnay, Viognier has the potential to produce full-bodied wines with a lush, soft character.", 
											price: 25
											)
product.save
