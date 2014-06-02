# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Action")
action = Category.find_by_name("Action")

Category.create(name: "Animation")
animation = Category.find_by_name("Animation")

Video.create(
  category: action,
  title: "The Bourne Identity", 
  description: "A man (Matt Damon) is found floating in the Mediterranean Sea with two gunshot wounds in his back and a device with the number of a Swiss safe deposit box embedded in his hip. Upon reaching shore, the man assumes the name Jason Bourne after finding a passport under the name in the safe deposit box, along with other international passports, large amounts of assorted currencies, and a gun. He subsequently attempts to discover his true identity while countering attempts on his life by CIA assassins, eventually realizing that he is one such assassin who failed to complete his most recent mission. Bourne breaks his connections to the CIA and unites with Marie Kreutz (Franka Potente), a woman who helped him learn about his most recent actions prior to his memory loss. Bourne's conflict with the CIA reaches a climax when he takes the fight to their doorstep. Directed by Doug Liman.", 
  small_cover_url: "/tmp/bourne_identity.jpg", 
  large_cover_url: "/tmp/bourne_identity_large.jpg")

Video.create(
  category: action,
  title: "The Bourne Supremacy", 
  description: "Some two years after learning that he is a trained assassin and breaking his connections with the CIA, Jason Bourne (Matt Damon) is framed for a crime connected to one of his past missions. A subsequent attempt on his life results in Marie's death, so he decides to take revenge by hunting down those responsible for her death and his forgotten past, thinking that the CIA is hunting him again. Bourne discovers that Ward Abbott (Brian Cox), one of the men who oversaw Operation Treadstone, the program which trained Bourne to be an assassin, stole millions of dollars from the CIA. Abbott meant to implicate Bourne in the theft with the frame-up, which would have led the CIA on a wild goose chase had Bourne been killed as intended. Bourne exposes Abbott to Pamela Landy (Joan Allen), the CIA officer in charge of finding Bourne, and Abbott commits suicide. During a long car chase with Bourne, the Russian agent who was paid to kill him and was responsible for Marie's death is killed, and Bourne goes into hiding.", 
  small_cover_url: "/tmp/bourne_supremacy.jpg",
  large_cover_url: "/tmp/bourne_supremacy_large.jpg")

Video.create(
  category: action,
  title: "The Bourne Ultimatum", 
  description: "After six weeks of hiding, Bourne (Matt Damon) learns that a British journalist has been investigating his past and contacts him to find out who his source is. Bourne is subsequently targeted by Operation Blackbriar, an upgraded Operation Treadstone, which has also taken note of the investigation. Believing that Bourne is a threat and is seeking revenge, Blackbriar's director Noah Vosen (David Strathairn) begins a new hunt for Bourne. Bourne manages to take classified documents proving that Blackbriar has targeted U.S. citizens; he is aided by Landy, who disagreed with Vosen from the beginning and does not support Blackbriar's existence, and former Treadstone logistics technician Nicky Parsons (Julia Stiles). She may have had romantic feelings for Bourne before his final mission and resultant amnesia. Bourne finally comes face to face with the person who oversaw his behavioral modification as the first Treadstone operative some years earlier, memories of which resurface. Those responsible for Treadstone and Blackbriar are exposed, and Bourne goes underground.", 
  small_cover_url: "/tmp/bourne_ultimatum.jpg",
  large_cover_url: "/tmp/bourne_ultimatum_large.jpg")

Video.create(
  category: animation,
  title: "The Wind Rises", 
  description: "The Wind Rises (風立ちぬ Kaze Tachinu?) is a 2013 Japanese animated historical drama film written and directed by Hayao Miyazaki, and is animated by Studio Ghibli. It is a fictionalized biography of Jiro Horikoshi (1903–1982), designer of the Mitsubishi A5M and its successor, the Mitsubishi A6M Zero; both aircraft were used by the Empire of Japan during World War II. The film is adapted from Miyazaki's manga of the same name, which was in turn loosely based on the 1937 short story The Wind Has Risen by Tatsuo Hori.", 
  small_cover_url: "/tmp/wind_rises.jpg",
  large_cover_url: "/tmp/wind_rises_large.jpg")

Video.create(
  category: animation,
  title: "Spirited Away", 
  description: "Spirited Away (千と千尋の神隠し Sen to Chihiro no Kamikakushi), is a 2001 Japanese animated fantasy film written and directed by Hayao Miyazaki and produced by Studio Ghibli. The film stars Rumi Hiiragi, Miyu Irino, Mari Natsuki, Takeshi Naito, Yasuko Sawaguchi, Tsunehiko Kamijō, Takehiko Ono and Bunta Sugawara, and tells the story of Chihiro Ogino (Hiiragi), a sullen ten-year-old girl who, while moving to a new neighborhood, enters the spirit world. After her parents are transformed into pigs by the witch Yubaba (Natsuki), Chihiro takes a job working in Yubaba's bathhouse to find a way to free herself and her parents and return to the human world.", 
  small_cover_url: "/tmp/spirited_away.jpg",
  large_cover_url: "/tmp/spirited_away_large.jpg")

