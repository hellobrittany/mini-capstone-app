# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# product = Product.new(
# 											name: "Sauvignon Blanc",  
# 											description: "A delicious dry white wine that is a good idea to drink on a hot summer day.", 
# 											price: 12
# 											)
# product.save

# product = Product.new(
# 											name: "Pinot Grigio", 
# 											image: "http://www.tizianowine.com/wp-content/uploads/2015/10/tiziano-pinot-grigio.jpg", 
# 											description: "A very refreshing dry white wine that is crisp and bright with floral notes, good for a hot summer day.", 
# 											price: 13
# 											)
# product.save

# product = Product.new(
# 											name: "Pinot Noir", 
# 											image: "http://www.totalwine.com/media/sys_master/twmmedia/hcf/h99/10027530027038.png", 
# 											description: "A medium bodied red wine that is easy to drink and goes with a variety of foods.", 
# 											price: 20
# 											)
# product.save

# product = Product.new(
# 											name: "Malbec", 
# 											image: "http://www.totalwine.com/media/sys_master/twmmedia/h40/hec/9382840664094.png", 
# 											description: "A purple grape variety used in making red wine. The grapes tend to have an inky dark color and robust tannins, and are known as one of the six grapes allowed in the blend of red Bordeaux wine.", 
# 											price: 17
# 											)
# product.save

# product = Product.new(
# 											name: "Sangiovese", 
# 											image: "http://www.glenora.com/assets/images/products/large/250x450JPEG_2711SagioveseNoBackground159.jpg", 
# 											description: "Though it is the grape of most of central Italy from Romagna down to Lazio, Campania and Sicily, outside Italy it is most famous as the only component of Brunello di Montalcino and Rosso di Montalcino.", 
# 											price: 21
# 											)
# product.save

# product = Product.new(
# 											name: "Viognier", 
# 											image: "http://f1.wine-searcher.net/images/labels/17/65/jorian-hill-viognier-santa-barbara-county-usa-10151765.jpg", 
# 											description: "A white wine grape variety. It is the only permitted grape for the French wine Condrieu in the Rhône Valley. ... Like Chardonnay, Viognier has the potential to produce full-bodied wines with a lush, soft character.", 
# 											price: 25
# 											)
# product.save

# product = Product.new(
# 											name: "Chardonnay", 
# 											image: "http://biltmore.s3.amazonaws.com/1256/biltmoreestate-chardonnay.jpg", 
# 											description: "Often wider-bodied (and more velvety) than other types of dry whites, with rich citrus (lemon, grapefruit) flavors. Fermenting in new oak barrels adds a buttery tone (vanilla, toast, coconut, toffee).", 
# 											price: 15
# 											)
# product.save

# product = Product.new(
# 											name: "Tempranillo", 
# 											image: "https://img.washingtonpost.com/rf/image_480w/2010-2019/WashingtonPost/2011/06/23/Food/Images/food002_1308871080.jpg?uuid=MnL_FJ3vEeCMAJKPmHKN9g", 
# 											description: "When you first taste a Spanish Tempranillo you'll get hit with the flavor of leather along with cherries. The finish is mild, smooth and lingers with tannin on both sides of your mouth. American and other New World Tempranillo delivers tons of cherry and tomato-sauce flavors followed by chunky tannin.", 
# 											price: 32
# 											)
# product.save

# product = Product.new(
# 											name: "Super Tuscan", 
# 											image: "http://winefolly.com/wp-content/uploads/2014/05/Tenuta-Luce-Della-Vite_Lucente_Super-Tuscan-Wine.jpg", 
# 											description: "is a term used to describe red wines from Tuscany that may include the use of non-indigenous grapes, particularly Merlot, Cabernet Sauvignon and Syrah", 
# 											price: 40
# 											)
# product.save

Image.create!([
								{ 
									name: "Tempranillo",
									url: "https://img.washingtonpost.com/rf/image_480w/2010-2019/WashingtonPost/2011/06/23/Food/Images/food002_1308871080.jpg?uuid=MnL_FJ3vEeCMAJKPmHKN9g", 
									product_id: 14
								}, {
									name: "Pinot Grigio",
									url: "http://www.tizianowine.com/wp-content/uploads/2015/10/tiziano-pinot-grigio.jpg", 
									product_id: 2
									}, {
									name: "Pinot Noir",
									url: "http://www.totalwine.com/media/sys_master/twmmedia/hcf/h99/10027530027038.png", 
									product_id: 3
								}, {
									name: "Sangiovese",
									url: "http://www.glenora.com/assets/images/products/large/250x450JPEG_2711SagioveseNoBackground159.jpg", 
									product_id: 5
								}, {
									name: "Viognier",
									url: "http://f1.wine-searcher.net/images/labels/17/65/jorian-hill-viognier-santa-barbara-county-usa-10151765.jpg", 
									product_id: 6
								}, {
									name: "Super Tuscan",
									url: "http://winefolly.com/wp-content/uploads/2014/05/Tenuta-Luce-Della-Vite_Lucente_Super-Tuscan-Wine.jpg", 
									product_id: 15
								}, {
									name: "Malbec",
									url: "http://www.totalwine.com/media/sys_master/twmmedia/h40/hec/9382840664094.png", 
									product_id: 4
								}, {
									name: "Chardonnay",
									url: "http://biltmore.s3.amazonaws.com/1256/biltmoreestate-chardonnay.jpg", 
									product_id: 13
								}
								# {
								# 	name: "Sauvignon Blanc", 
								# 	url: "https://www.masoncellars.com/assets/easyimage/4/4b33eaa150f94f3b6f169e68d716ff6b.png"
									 
								# }

	])
