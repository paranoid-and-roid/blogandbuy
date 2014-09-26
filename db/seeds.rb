# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Film.create(:filmname => 'All The King\'s Men', :description => 'Oscar-winning turns from Broderick Crawford and Mercedes McCambridge in a political drama', :price => '11.99', :director => 'Robert Rossen', :actors => 'Broderick Crawford, John Ireland, Mercedes McCambridge', :length => '109 minutes', :score => 0, :release_year => '1949', :image_url => 'all_the_kings_men.jpg')
Film.create(:filmname => 'Casablanca', :description => 'Rick Blaine and Ilsa Lund meet again in the north African city, but everything has changed for the worse for both of them', :price => '11.99', :director => 'Michael Curtiz', :actors => 'Humphrey Bogart, Ingrid Bergman, Paul Henreid, Claude Rains', :length => '102 minutes', :score => 0, :release_year => '1943', :image_url => 'casablanca.jpg')
Film.create(:filmname => 'Harvey', :description => 'Pixillated Jimmy Stewart is best friends with a giant invisible rabbit, and his sister is going insane because of it.', :price => '12.99', :director => 'Henry Koster', :actors => 'James Stewart, Josephine Hull, Peggy Dow', :length => '104 minutes', :score => 0, :release_year => '1950', :image_url => 'harvey.jpg')
Film.create(:filmname => 'Adventures of Robin Hood, The', :description => 'Errol Flynn in swashbucklingly good form as the friend to the poor in this richly colourful rendition of the legend', :price => '9.99', :director => 'Michael Curtiz, William Keighley', :actors => 'Errol Flynn, Olivia deHavilland, Basil Rathbone, Claude Rains', :length => '102 minutes', :score => 0, :release_year => '1938', :image_url => 'robin_hood.jpg')
Film.create(:filmname => 'Citizen Kane', :description => 'A whole, extraordinary life unfolds as Orson Welles leads us through the long-standing "best film of all time"', :price => '19.99', :director => 'Orson Welles', :actors => 'Orson Welles, Joseph Cotton, Dorothy Comingore', :length => '119 minutes', :score => 0, :release_year => '1941', :image_url => 'citizen_kane.jpg')
Film.create(:filmname => 'Hud', :description => 'Paul Newman is broodiness at its best in this modern western. Expect much angst and alienation', :price => '12.99', :director => 'Martin ritt', :actors => 'Paul Newman, Patricia Neal, Melvyn Douglas', :length => '112 minutes', :score => 0, :release_year => '1963', :image_url => 'hud.jpg')
