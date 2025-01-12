

import SwiftUI

struct FactsViewCaptain777: View {
    @State var timer: Timer?
    @State var selectedFact: FactCaptain777? = facts.randomElement()!
    @State var showSheet = false
    
    var wrfw = "wfvrwv"
    var wrfvwr = 145.54524
    func cwefcwrefc() -> Float {
        return 242.242
    }
    func qerfcqref() {
        print("cqefcqefc")
    }
    fileprivate struct Jrmfkc {}
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 22, weight: .regular, color: .hex("ADE552"))
                                .padding(.top, 16)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("ADE552"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFont(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("ADE552"))
                    
                    Rectangle()
                        .foregroundColor(.hex("402E27"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hex("402E27")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewCaptain777(showLoading: false, selectedTab: .facts)
}


struct FactCaptain777 {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactCaptain777] = [
    
    FactCaptain777(title: "The Deepest Place on Earth", content: "The Mariana Trench is the deepest part of the world's oceans, plunging to a depth of about 11 kilometers (7 miles). Located in the western Pacific Ocean, it is deeper than Mount Everest is tall. At its bottom, the pressure is more than 1,000 times atmospheric pressure at sea level."),
    FactCaptain777(title: "The Tree That Owns Itself", content: "In Athens, Georgia, there is a white oak tree that legally owns itself. According to local legend, the owner of the land deeded the tree both the land it stands on and a surrounding area of 8 feet in the 19th century. It’s known as 'The Tree That Owns Itself.'"),
    FactCaptain777(title: "The Oldest Living Organism", content: "The Pando Aspen Grove in Utah is considered the oldest and largest living organism on Earth. It consists of over 40,000 individual trees that share a single root system, estimated to be over 80,000 years old."),
    FactCaptain777(title: "The City of Cats", content: "Istanbul, Turkey, is often referred to as 'The City of Cats.' It is home to tens of thousands of stray cats that roam freely and are cared for by locals. Cats have a special cultural significance in the city, with many receiving food, water, and shelter from residents."),
    FactCaptain777(title: "The Library of Dreams", content: "The Salt Mines of Wieliczka in Poland host an underground chapel carved entirely out of salt. This UNESCO World Heritage site includes sculptures, chandeliers, and even a fully functional church, all created from salt deposits."),
    FactCaptain777(title: "The Island of Dolls", content: "La Isla de las Muñecas (Island of the Dolls) in Mexico is a mysterious site filled with dolls hanging from trees. According to local legend, the dolls were placed there by a man to honor a young girl who drowned nearby. It is now a popular but eerie tourist destination."),
    FactCaptain777(title: "The Floating Post Office", content: "Srinagar in India is home to the only floating post office in the world. Located on Dal Lake, it serves as both a functioning post office and a tourist attraction. It floats on a houseboat and offers unique postcards for visitors."),
    FactCaptain777(title: "The Magnetic Hill Mystery", content: "There is a hill near Leh in Ladakh, India, that defies gravity. Known as the 'Magnetic Hill,' vehicles parked at the base of the hill appear to roll uphill. The effect is actually an optical illusion caused by the surrounding landscape."),
    FactCaptain777(title: "The Coldest Inhabited Place", content: "Oymyakon, a village in Siberia, is the coldest inhabited place on Earth. Temperatures in winter can drop to as low as -67.7°C (-89.8°F). Despite the harsh conditions, it is home to around 500 residents."),
    FactCaptain777(title: "The Blue Zone Wonders", content: "Blue Zones are regions of the world where people live significantly longer lives. These include Okinawa in Japan, Sardinia in Italy, and Nicoya in Costa Rica. The secret to their longevity often includes a plant-based diet, regular physical activity, and strong social connections."),
    FactCaptain777(title: "The Sleeping City", content: "Kalachi, a small village in Kazakhstan, became famous for its 'sleeping sickness.' Many residents mysteriously fell asleep for days at a time. Scientists later discovered that carbon monoxide from nearby uranium mines was the likely cause."),
    FactCaptain777(title: "The Antarctic Waterfall", content: "Blood Falls in Antarctica is a natural wonder where red water flows from the Taylor Glacier. The color is due to iron oxide in the water, making it appear as though the glacier is 'bleeding.' It’s a unique example of extremophile life thriving in harsh conditions."),
    FactCaptain777(title: "The Moon's Scent", content: "Apollo astronauts who walked on the moon reported that lunar dust smelled like burnt gunpowder. This unique scent was noticed when the astronauts brought moon dust samples back into their spacecraft."),
    FactCaptain777(title: "The Neverending Rainbow", content: "In 2017, a rainbow in Taipei, Taiwan, lasted for 9 hours, making it the longest-lasting rainbow ever recorded. Its unusually long duration was due to a combination of weather conditions, including moisture and slow-moving air currents."),
    FactCaptain777(title: "The World's Quietest Room", content: "The quietest place on Earth is an anechoic chamber at Orfield Labs in Minnesota, USA. It absorbs 99.99% of sound, creating a surreal experience where visitors can hear their heartbeat and even the sound of their own blood circulating."),
    FactCaptain777(title: "The Immortal Jellyfish", content: "Turritopsis dohrnii, known as the 'immortal jellyfish,' has the ability to revert its cells to an earlier stage of life when injured or stressed. This unique process allows it to potentially live indefinitely under the right conditions."),
    FactCaptain777(title: "The Soundless Fish", content: "The coelacanth, a deep-sea fish once thought to be extinct, has no swim bladder. Instead, it uses an oil-filled organ for buoyancy, allowing it to float silently in the deep ocean."),
    FactCaptain777(title: "The Largest Animal Ever", content: "The blue whale holds the title of the largest animal to ever live on Earth. These marine giants can grow up to 30 meters (98 feet) long and weigh as much as 180 metric tons, more than any dinosaur ever discovered."),
    FactCaptain777(title: "The Moon's Influence on Earth", content: "The gravitational pull of the moon is responsible for the Earth’s tides. Its influence also slows down Earth's rotation, causing the day to lengthen by about 1.7 milliseconds every century."),
    FactCaptain777(title: "The Phantom Island", content: "In the 18th century, an island called 'Sandy Island' appeared on maps between Australia and New Caledonia. However, it was later discovered that it never existed, and the island was likely a navigational error caused by faulty mapping."),
    FactCaptain777(title: "The Waterfall That Turns Into Lava", content: "In Hawaii, during volcanic eruptions, lava flows into the ocean and creates the phenomenon known as 'lava waterfalls.' The molten rock cascades down cliffs, creating dramatic displays of light and color."),
    FactCaptain777(title: "The Mystery of Stonehenge", content: "Stonehenge in England is a prehistoric monument that continues to baffle scientists. Its purpose remains a mystery, but it is believed to have been used for astronomical observations or religious ceremonies. Some researchers believe it was a place of healing."),
    FactCaptain777(title: "The Ghost City of Pripyat", content: "Pripyat, Ukraine, was abandoned after the Chernobyl disaster in 1986. The city, once home to over 50,000 residents, remains frozen in time, with intact buildings and personal belongings left behind, offering a chilling glimpse into a once-thriving community."),
    FactCaptain777(title: "The Silent Fish", content: "The male seahorse is the only species in which the male carries and gives birth to the young. After mating, the female deposits her eggs into a specialized pouch on the male's abdomen, where he fertilizes and carries the babies until birth."),
    FactCaptain777(title: "The Largest Desert", content: "Although most people think of deserts as hot places, the largest desert in the world is actually Antarctica. With an area of about 14 million square kilometers, it is a cold desert due to its lack of moisture, not temperature."),
    FactCaptain777(title: "The Enigma of the Bermuda Triangle", content: "The Bermuda Triangle, a region between Miami, Bermuda, and Puerto Rico, is infamous for mysterious disappearances of ships and aircraft. While there are many theories, including paranormal explanations, most incidents can be attributed to human error or natural phenomena."),
    FactCaptain777(title: "The Underwater Museum", content: "The Cancún Underwater Museum in Mexico is the world’s largest underwater museum. It features over 500 life-sized sculptures that are submerged in the waters around Isla Mujeres and the Cancun coastline, combining art with coral reef restoration."),
    FactCaptain777(title: "The Witches' Hill", content: "The Hill of Crosses in Lithuania is a pilgrimage site where thousands of crosses have been placed by visitors over centuries. It’s been a symbol of resistance, spirituality, and perseverance through many periods of foreign occupation."),
    FactCaptain777(title: "The Invisible Dolphin", content: "The 'white whale' of the dolphin world is the albino bottlenose dolphin, an extremely rare phenomenon. These dolphins lack pigment in their skin, giving them an eerie white appearance. Only a handful of such dolphins have been spotted in the wild."),
    FactCaptain777(title: "The City Beneath the Sea", content: "There is a sunken city off the coast of Egypt near Alexandria called Heracleion. This ancient city, once an important trading hub, was submerged around 1,200 years ago due to shifting tectonic plates and rising sea levels."),
    FactCaptain777(title: "The Whistling Forest", content: "In Colombia, there is a forest known as the 'Whistling Forest.' The forest's unique acoustics cause the wind to make high-pitched whistling sounds as it passes through the trees, creating an eerie but beautiful natural melody."),
    FactCaptain777(title: "The Lurking Ghost Crab", content: "The ghost crab is a fast-moving creature found on sandy beaches. It can run at speeds of up to 16 kilometers per hour (10 miles per hour), and it is known for its ability to burrow quickly into the sand to escape predators."),
    FactCaptain777(title: "The World's Largest Cave", content: "The Son Doong Cave in Vietnam is the largest cave in the world. It is large enough to fit a 40-story skyscraper inside and features its own ecosystem, including a river, jungle, and unique species of wildlife."),
    FactCaptain777(title: "The Island of Fire", content: "The island of Java in Indonesia is home to over 130 active volcanoes, making it one of the most geologically active places on Earth. These volcanoes contribute to the rich soil and fertility of the region but also pose constant risks of eruption."),
    FactCaptain777(title: "The Desert Blooms", content: "The Atacama Desert in Chile is the driest desert on Earth. However, once every few years, after rare rainfalls, the desert transforms into a blanket of colorful flowers, a phenomenon known as the 'desert bloom.'"),
    FactCaptain777(title: "The Fire Rainbow", content: "Fire rainbows, or circumhorizontal arcs, are optical phenomena that occur when sunlight passes through ice crystals in cirrus clouds. Despite the name, they have nothing to do with fire and appear as horizontal bands of vibrant colors in the sky."),
    FactCaptain777(title: "The Living Fossil", content: "The horseshoe crab is often called a 'living fossil' because it has existed in its current form for over 450 million years. These creatures have blue blood, which is used in medical research to test for bacterial contamination."),
    FactCaptain777(title: "The Singing Sand Dunes", content: "Some sand dunes, such as those in the Sahara Desert, can produce a humming or droning sound when the sand grains move. This natural phenomenon is caused by the friction between the grains during wind-driven movement."),
    FactCaptain777(title: "The Smelliest Flower", content: "The corpse flower (Amorphophallus titanum) is known for its foul odor, which smells like rotting flesh. This plant blooms rarely and is one of the largest flowers in the world, attracting flies and beetles for pollination."),
    FactCaptain777(title: "The Floating Eyes", content: "The 'Eye of the Sahara,' also known as the Richat Structure, is a geological formation in Mauritania. From space, it resembles a giant bullseye and was once thought to be an impact crater, though it is now believed to be a deeply eroded dome."),
    FactCaptain777(title: "The Fastest Animal on Earth", content: "The peregrine falcon is the fastest animal in the world, capable of reaching speeds of over 380 kilometers per hour (240 miles per hour) during its hunting stoop (dive). It uses this incredible speed to catch its prey mid-air."),
    FactCaptain777(title: "The Glowworms of Waitomo", content: "The Waitomo Caves in New Zealand are famous for their glowworms, which light up the cave walls like a starry night. These bioluminescent insects use their glow to attract prey into their sticky silk threads."),
    FactCaptain777(title: "The River That Boils", content: "In the Amazon rainforest, there is a river called Shanay-Timpishka, known as the 'Boiling River.' Its waters can reach temperatures as high as 93°C (199°F), making it impossible for most forms of life to survive."),
    FactCaptain777(title: "The Mountain of Glass Frogs", content: "Glass frogs, found in Central and South America, have translucent skin that allows you to see their internal organs. Their unique appearance helps them camouflage in their forest environment."),
    FactCaptain777(title: "The Sea Without a Shore", content: "The Sargasso Sea, located in the Atlantic Ocean, has no land borders. It is defined by ocean currents and is known for its dense mats of sargassum seaweed, which provide a habitat for a variety of marine life."),
    FactCaptain777(title: "The Frozen Waves", content: "In Antarctica, 'frozen waves' are formed when strong winds and cold temperatures freeze the ocean’s surface mid-wave. These ice formations create a surreal landscape that looks like a frozen snapshot of ocean motion."),
    FactCaptain777(title: "The Endless Cave Art", content: "The Chauvet Cave in France contains some of the world’s oldest known cave paintings, dating back over 30,000 years. The images depict animals such as horses, lions, and rhinoceroses, showcasing the artistic talent of early humans."),
    FactCaptain777(title: "The Mirror of the Sky", content: "The Salar de Uyuni in Bolivia is the world’s largest salt flat. During the rainy season, it becomes covered with a thin layer of water, creating a mirror effect that perfectly reflects the sky."),
    FactCaptain777(title: "The Tree of 40 Fruits", content: "A single tree, engineered by Sam Van Aken, produces 40 different types of stone fruit, including peaches, plums, and cherries. The 'Tree of 40 Fruit' is a living art project that also helps preserve rare fruit varieties."),
    FactCaptain777(title: "The Giant's Causeway", content: "The Giant’s Causeway in Northern Ireland is made up of about 40,000 interlocking basalt columns. This natural wonder was formed by an ancient volcanic eruption and inspired myths about giants building the pathway."),
    FactCaptain777(title: "The Library of Ice", content: "The Svalbard Global Seed Vault, located on a remote Norwegian island, is designed to preserve seeds from around the world. It is built to withstand natural disasters and ensure the survival of plant species for future generations."),
    FactCaptain777(title: "The Water That Burns", content: "Pitch Lake in Trinidad and Tobago is the largest natural deposit of asphalt in the world. The lake is so dense with hydrocarbons that you can set its surface on fire, creating an eerie spectacle."),
    FactCaptain777(title: "The Walking Forest", content: "The walking palm tree in Central and South America appears to 'walk' by growing new roots in the direction of sunlight. Over time, this gives the illusion that the tree is slowly moving through the forest."),
    FactCaptain777(title: "The Feathered Dinosaur", content: "The Archaeopteryx, a dinosaur that lived about 150 million years ago, is considered a transitional species between dinosaurs and birds. Its fossilized remains show feather impressions, suggesting it could glide or fly short distances."),
    FactCaptain777(title: "The Oldest Living Organism", content: "A colony of quaking aspens in Utah, known as Pando, is considered the oldest and heaviest living organism on Earth. The colony is over 80,000 years old and spans more than 43 hectares."),
    FactCaptain777(title: "The Deepest Point on Earth", content: "The Challenger Deep in the Mariana Trench is the deepest point in the Earth's oceans, reaching a depth of approximately 10,994 meters (36,070 feet). It is so deep that sunlight cannot penetrate its waters."),
    FactCaptain777(title: "The Soundless Zone", content: "The quietest place on Earth is the anechoic chamber at Orfield Laboratories in Minnesota, USA. It absorbs 99.99% of all sound, and most people can only endure being inside for a few minutes before becoming disoriented."),
    FactCaptain777(title: "The Magnetic Hill", content: "In Ladakh, India, there is a 'magnetic hill' where vehicles appear to roll uphill against gravity. This optical illusion is caused by the layout of the surrounding terrain, tricking the human eye."),
    FactCaptain777(title: "The City of Ice", content: "Harbin, China, hosts an annual Ice and Snow Sculpture Festival featuring enormous ice castles and sculptures carved from blocks of ice taken from the nearby Songhua River. The city transforms into a frozen wonderland during the event."),
    FactCaptain777(title: "The Planet with Two Suns", content: "Kepler-16b, a planet discovered by NASA’s Kepler mission, orbits two stars, creating a real-life version of the double-sunset scenes seen in Star Wars. It’s located about 200 light-years from Earth."),
    FactCaptain777(title: "The Inverted Waterfall", content: "In India’s Naneghat region, there’s an 'inverted waterfall' where strong winds force the water to flow upward instead of falling down, creating an awe-inspiring sight."),
    FactCaptain777(title: "The Hidden Ocean", content: "Scientists believe that a massive underground ocean, three times the size of all Earth’s surface oceans combined, exists beneath the Earth’s crust, stored in a mineral called ringwoodite."),
    FactCaptain777(title: "The Blood Falls", content: "In Antarctica, a glacier called Taylor Glacier releases iron-rich, red-colored water, creating the illusion of 'Blood Falls.' The phenomenon is caused by subglacial microbes that metabolize iron in the absence of light."),
    FactCaptain777(title: "The Infinite Flame", content: "The Eternal Flame Falls in New York is a small waterfall with a natural gas leak beneath it, allowing a flame to burn continuously. Visitors can even relight it if it extinguishes."),
    FactCaptain777(title: "The Four Corners", content: "The Four Corners Monument in the United States is the only place where four states—Arizona, Colorado, New Mexico, and Utah—meet at a single point, allowing visitors to stand in four states simultaneously."),
    FactCaptain777(title: "The Crooked Forest", content: "In Poland, there’s a forest of oddly-shaped pine trees, known as the 'Crooked Forest.' The trunks are bent at a 90-degree angle before growing straight upward. The cause of the curvature remains a mystery."),
    FactCaptain777(title: "The Tree That Owns Itself", content: "In Athens, Georgia, there is a white oak tree that legally owns itself. The owner deeded the land around the tree to the tree itself, ensuring its protection."),
    FactCaptain777(title: "The Lake of Jellyfish", content: "Jellyfish Lake in Palau is home to millions of golden jellyfish. These jellyfish have lost their stinging ability and rely on sunlight and algae for survival."),
    FactCaptain777(title: "The Longest Animal", content: "The bootlace worm, found in the North Sea, can grow up to 55 meters (180 feet) long, making it the longest animal on Earth, even longer than the blue whale."),
    FactCaptain777(title: "The Largest Flower", content: "The Rafflesia arnoldii produces the world’s largest flower, which can grow up to 1 meter (3 feet) in diameter. Known as the 'corpse flower,' it emits a strong odor of decaying flesh."),
    FactCaptain777(title: "The Hidden Glacier Caves", content: "Underneath Iceland’s glaciers, there are magnificent ice caves formed by meltwater. These caves are temporary, changing and disappearing with each melting season."),
    FactCaptain777(title: "The River of Five Colors", content: "Caño Cristales in Colombia is often called the 'Liquid Rainbow.' During certain times of the year, aquatic plants turn the river into vibrant hues of red, yellow, green, blue, and black."),
    FactCaptain777(title: "The Endless Lightning Storm", content: "Lake Maracaibo in Venezuela experiences the highest concentration of lightning strikes in the world, with thousands of strikes occurring nightly during the rainy season."),
    FactCaptain777(title: "The Volcanic Blue Flames", content: "Kawah Ijen volcano in Indonesia emits mesmerizing blue flames at night. This phenomenon is caused by the combustion of sulfuric gases escaping from the volcano.")
]
