//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewCaptain777: View {
    @State var selectedQuestion: Tab4QuestionCaptain777 = Tab4QuestionCaptain777.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: isSE ? 20: 22, weight: .medium, color: .black)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSE ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint2 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSE ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionCaptain777.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewCaptain777(showLoading: false, selectedTab: .questions)
}

struct Tab4QuestionCaptain777 {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4QuestionCaptain777] = [
        Tab4QuestionCaptain777(
            question: "What is the fastest land animal in the world?",
            hint1: "It can run over 100 kilometers per hour.",
            hint2: "Its name starts with 'C'.",
            answer: "Cheetah"
        ),
        Tab4QuestionCaptain777(
            question: "Which element has the chemical symbol 'O'?",
            hint1: "It’s essential for breathing.",
            hint2: "It makes up a significant part of water.",
            answer: "Oxygen"
        ),
        Tab4QuestionCaptain777(
            question: "What is the tallest mountain on Earth?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its height is over 8,800 meters.",
            answer: "Mount Everest"
        ),
        Tab4QuestionCaptain777(
            question: "Which planet is known as the 'Red Planet'?",
            hint1: "It’s named after the Roman god of war.",
            hint2: "It has the tallest volcano in the solar system.",
            answer: "Mars"
        ),
        Tab4QuestionCaptain777(
            question: "What is the largest organ in the human body?",
            hint1: "It protects your body from external harm.",
            hint2: "It regenerates itself over time.",
            answer: "Skin"
        ),
        Tab4QuestionCaptain777(
            question: "What is the longest river in the world?",
            hint1: "It flows through South America.",
            hint2: "It is home to many unique species.",
            answer: "Amazon River"
        ),
        Tab4QuestionCaptain777(
            question: "Which gas do plants absorb during photosynthesis?",
            hint1: "It’s also exhaled by humans.",
            hint2: "Its chemical formula is CO2.",
            answer: "Carbon Dioxide"
        ),
        Tab4QuestionCaptain777(
            question: "What is the smallest bird in the world?",
            hint1: "It is known for its rapid wing flapping.",
            hint2: "Its name starts with 'H'.",
            answer: "Hummingbird"
        ),
        Tab4QuestionCaptain777(
            question: "Who wrote 'Romeo and Juliet'?",
            hint1: "He was an English playwright and poet.",
            hint2: "He is often called 'The Bard of Avon'.",
            answer: "William Shakespeare"
        ),
        Tab4QuestionCaptain777(
            question: "Which ocean is the largest on Earth?",
            hint1: "It covers more than 60 million square miles.",
            hint2: "It lies between Asia, Australia, and the Americas.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionCaptain777(
            question: "What is the primary ingredient in guacamole?",
            hint1: "It’s a green fruit with a large seed.",
            hint2: "Its name starts with 'A'.",
            answer: "Avocado"
        ),
        Tab4QuestionCaptain777(
            question: "Which country has the most population in the world?",
            hint1: "It’s in Asia.",
            hint2: "Its capital is Beijing.",
            answer: "China"
        ),
        Tab4QuestionCaptain777(
            question: "What is the chemical symbol for gold?",
            hint1: "It’s a precious metal.",
            hint2: "Its symbol consists of two letters: 'A' and 'U'.",
            answer: "Au"
        ),
        Tab4QuestionCaptain777(
            question: "What year did the Titanic sink?",
            hint1: "It happened in the early 20th century.",
            hint2: "It was the year 1912.",
            answer: "1912"
        ),
        Tab4QuestionCaptain777(
            question: "What is the main ingredient in chocolate?",
            hint1: "It comes from a bean.",
            hint2: "Its name starts with 'C'.",
            answer: "Cocoa"
        ),
        Tab4QuestionCaptain777(
            question: "What is the largest desert in the world?",
            hint1: "It’s located in Africa.",
            hint2: "Its name starts with 'S'.",
            answer: "Sahara Desert"
        ),
        Tab4QuestionCaptain777(
            question: "What is the hardest natural substance on Earth?",
            hint1: "It’s often used in jewelry.",
            hint2: "It’s formed from carbon.",
            answer: "Diamond"
        ),
        Tab4QuestionCaptain777(
            question: "What is the capital of Japan?",
            hint1: "It’s the largest city in Japan.",
            hint2: "Its name starts with 'T'.",
            answer: "Tokyo"
        ),
        Tab4QuestionCaptain777(
            question: "What type of galaxy is the Milky Way?",
            hint1: "It has a spiral shape.",
            hint2: "It contains billions of stars.",
            answer: "Spiral Galaxy"
        ),
        Tab4QuestionCaptain777(
            question: "Which metal is liquid at room temperature?",
            hint1: "Its chemical symbol is Hg.",
            hint2: "It’s often used in thermometers.",
            answer: "Mercury"
        ),
        Tab4QuestionCaptain777(
            question: "What is the main gas in the Earth's atmosphere?",
            hint1: "It makes up about 78% of the air.",
            hint2: "Its name starts with 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionCaptain777(
            question: "What is the tallest animal in the world?",
            hint1: "It has a long neck.",
            hint2: "Its name starts with 'G'.",
            answer: "Giraffe"
        ),
        Tab4QuestionCaptain777(
            question: "Who painted the Mona Lisa?",
            hint1: "He was also an inventor.",
            hint2: "His name starts with 'L'.",
            answer: "Leonardo da Vinci"
        ),
        Tab4QuestionCaptain777(
            question: "What is the closest star to Earth?",
            hint1: "It’s the source of daylight.",
            hint2: "Its name starts with 'S'.",
            answer: "The Sun"
        ),
        Tab4QuestionCaptain777(
            question: "Which animal is known as the 'King of the Jungle'?",
            hint1: "It’s a big cat.",
            hint2: "Its name starts with 'L'.",
            answer: "Lion"
        ),
        Tab4QuestionCaptain777(
            question: "What is the smallest bone in the human body?",
            hint1: "It’s located in the ear.",
            hint2: "Its name starts with 'S'.",
            answer: "Stapes"
        ),
        Tab4QuestionCaptain777(
            question: "Which country is known as the 'Land of the Rising Sun'?",
            hint1: "It’s an island nation in Asia.",
            hint2: "Its capital is Tokyo.",
            answer: "Japan"
        ),
        Tab4QuestionCaptain777(
            question: "What is the main ingredient in sushi?",
            hint1: "It’s a type of grain.",
            hint2: "It’s often sticky when cooked.",
            answer: "Rice"
        ),
        Tab4QuestionCaptain777(
            question: "Which planet has the most moons?",
            hint1: "It’s the largest planet in the solar system.",
            hint2: "Its name starts with 'J'.",
            answer: "Jupiter"
        ),
        Tab4QuestionCaptain777(
            question: "What is the chemical symbol for water?",
            hint1: "It contains hydrogen and oxygen.",
            hint2: "Its formula has two letters and one number.",
            answer: "H2O"
        ),
        Tab4QuestionCaptain777(
            question: "What is the national animal of Australia?",
            hint1: "It’s a marsupial.",
            hint2: "It hops on two legs.",
            answer: "Kangaroo"
        ),
        Tab4QuestionCaptain777(
            question: "What is the speed of light in a vacuum?",
            hint1: "It’s approximately 300,000 kilometers per second.",
            hint2: "Its exact value is 299,792 kilometers per second.",
            answer: "299,792 kilometers per second"
        ),
        Tab4QuestionCaptain777(
            question: "What is the largest island in the world?",
            hint1: "It’s located near the Arctic Circle.",
            hint2: "It’s part of the Kingdom of Denmark.",
            answer: "Greenland"
        ),
        Tab4QuestionCaptain777(
            question: "What is the scientific name for humans?",
            hint1: "It has two words: 'Homo' and something else.",
            hint2: "It translates to 'wise man.'",
            answer: "Homo sapiens"
        ),
        Tab4QuestionCaptain777(
            question: "Which bird is known for its ability to mimic sounds?",
            hint1: "It’s often kept as a pet.",
            hint2: "Its name starts with 'P'.",
            answer: "Parrot"
        ),
        Tab4QuestionCaptain777(
            question: "What is the capital city of France?",
            hint1: "It’s known as the 'City of Lights.'",
            hint2: "Its most famous landmark is the Eiffel Tower.",
            answer: "Paris"
        ),
        Tab4QuestionCaptain777(
            question: "Which planet is the hottest in our solar system?",
            hint1: "It’s the second planet from the Sun.",
            hint2: "Its thick atmosphere traps heat.",
            answer: "Venus"
        ),
        Tab4QuestionCaptain777(
            question: "What is the process by which plants make their food?",
            hint1: "It involves sunlight and chlorophyll.",
            hint2: "It starts with 'P'.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionCaptain777(
            question: "Which is the longest bone in the human body?",
            hint1: "It’s located in the leg.",
            hint2: "Its name starts with 'F'.",
            answer: "Femur"
        ),
        Tab4QuestionCaptain777(
            question: "What is the largest ocean predator?",
            hint1: "It’s a type of shark.",
            hint2: "Its name starts with 'G'.",
            answer: "Great White Shark"
        ),
        Tab4QuestionCaptain777(
            question: "Which country is famous for inventing pizza?",
            hint1: "It’s located in southern Europe.",
            hint2: "Its capital is Rome.",
            answer: "Italy"
        ),
        Tab4QuestionCaptain777(
            question: "What is the smallest unit of life?",
            hint1: "It makes up all living organisms.",
            hint2: "Its name starts with 'C'.",
            answer: "Cell"
        ),
        Tab4QuestionCaptain777(
            question: "What is the name of the first artificial satellite launched into space?",
            hint1: "It was launched by the Soviet Union.",
            hint2: "Its name starts with 'S'.",
            answer: "Sputnik"
        ),
        Tab4QuestionCaptain777(
            question: "What is the primary color of the Golden Gate Bridge?",
            hint1: "It’s a warm color.",
            hint2: "Its name starts with 'O'.",
            answer: "Orange"
        ),
        Tab4QuestionCaptain777(
            question: "Which fruit is known as the 'king of fruits'?",
            hint1: "It has a spiky exterior and a strong smell.",
            hint2: "Its name starts with 'D'.",
            answer: "Durian"
        ),
        Tab4QuestionCaptain777(
            question: "What is the main ingredient in bread?",
            hint1: "It’s a type of powder.",
            hint2: "Its name starts with 'F'.",
            answer: "Flour"
        ),
        Tab4QuestionCaptain777(
            question: "Who was the first person to walk on the Moon?",
            hint1: "It happened in 1969.",
            hint2: "His name starts with 'N'.",
            answer: "Neil Armstrong"
        ),
        Tab4QuestionCaptain777(
            question: "Which country is home to the kangaroo?",
            hint1: "It’s also known for the Great Barrier Reef.",
            hint2: "Its name starts with 'A'.",
            answer: "Australia"
        ),
        Tab4QuestionCaptain777(
            question: "What is the chemical symbol for iron?",
            hint1: "It’s a two-letter symbol.",
            hint2: "It starts with 'F'.",
            answer: "Fe"
        ),
        Tab4QuestionCaptain777(
            question: "What is the name of the largest rainforest in the world?",
            hint1: "It’s located in South America.",
            hint2: "Its name starts with 'A'.",
            answer: "Amazon Rainforest"
        ),
        Tab4QuestionCaptain777(
            question: "What is the term for animals that eat both plants and meat?",
            hint1: "Humans are examples of this.",
            hint2: "The word starts with 'O'.",
            answer: "Omnivores"
        ),
        Tab4QuestionCaptain777(
            question: "What is the boiling point of water at sea level in Celsius?",
            hint1: "It’s a round number.",
            hint2: "It’s less than 110 degrees.",
            answer: "100 degrees"
        ),
        Tab4QuestionCaptain777(
            question: "Which ancient civilization built the pyramids?",
            hint1: "It’s located in northern Africa.",
            hint2: "Its name starts with 'E'.",
            answer: "Egyptians"
        ),
        Tab4QuestionCaptain777(
            question: "What is the largest planet in our solar system?",
            hint1: "It’s famous for its Great Red Spot.",
            hint2: "Its name starts with 'J'.",
            answer: "Jupiter"
        ),
        Tab4QuestionCaptain777(
            question: "Which musical instrument has 88 keys?",
            hint1: "It’s commonly used in classical and modern music.",
            hint2: "Its name starts with 'P'.",
            answer: "Piano"
        ),
        Tab4QuestionCaptain777(
            question: "Which organ in the human body is responsible for pumping blood?",
            hint1: "It’s located in the chest.",
            hint2: "Its name starts with 'H'.",
            answer: "Heart"
        ),
        Tab4QuestionCaptain777(
            question: "What is the fastest land animal?",
            hint1: "It’s a type of big cat.",
            hint2: "Its name starts with 'C'.",
            answer: "Cheetah"
        ),
        Tab4QuestionCaptain777(
            question: "What is the chemical formula for table salt?",
            hint1: "It contains sodium and chlorine.",
            hint2: "Its formula has two letters.",
            answer: "NaCl"
        ),
        Tab4QuestionCaptain777(
            question: "Which planet is known as the 'Red Planet'?",
            hint1: "It’s the fourth planet from the Sun.",
            hint2: "Its name starts with 'M'.",
            answer: "Mars"
        ),
        Tab4QuestionCaptain777(
            question: "What is the term for the fear of spiders?",
            hint1: "It starts with 'A'.",
            hint2: "It ends with 'phobia'.",
            answer: "Arachnophobia"
        ),
        Tab4QuestionCaptain777(
            question: "Which country is known for its maple syrup?",
            hint1: "It’s located in North America.",
            hint2: "Its flag features a red maple leaf.",
            answer: "Canada"
        ),
        Tab4QuestionCaptain777(
            question: "What do bees collect to make honey?",
            hint1: "It comes from flowers.",
            hint2: "Its name starts with 'N'.",
            answer: "Nectar"
        ),
        Tab4QuestionCaptain777(
            question: "What is the largest species of bear?",
            hint1: "It lives in cold Arctic regions.",
            hint2: "Its name starts with 'P'.",
            answer: "Polar Bear"
        ),
        Tab4QuestionCaptain777(
            question: "What is the only metal that is a liquid at room temperature?",
            hint1: "Its symbol is Hg.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionCaptain777(
            question: "Which ancient city is known as the 'Lost City of the Incas'?",
            hint1: "It’s located in Peru.",
            hint2: "Its name starts with 'M'.",
            answer: "Machu Picchu"
        ),
        Tab4QuestionCaptain777(
            question: "Which sea creature has three hearts?",
            hint1: "It’s known for its intelligence.",
            hint2: "Its name starts with 'O'.",
            answer: "Octopus"
        ),
        Tab4QuestionCaptain777(
            question: "What is the name of the element with the chemical symbol 'O'?",
            hint1: "It’s essential for breathing.",
            hint2: "Its name starts with 'O'.",
            answer: "Oxygen"
        ),
        Tab4QuestionCaptain777(
            question: "Which bird is known for its ability to fly backward?",
            hint1: "It’s a very small bird.",
            hint2: "Its name starts with 'H'.",
            answer: "Hummingbird"
        ),
        Tab4QuestionCaptain777(
            question: "What is the largest type of tree in the world?",
            hint1: "It’s found in California.",
            hint2: "Its name starts with 'S'.",
            answer: "Sequoia"
        ),
        Tab4QuestionCaptain777(
            question: "Which country is famous for the Great Wall?",
            hint1: "It’s located in Asia.",
            hint2: "Its name starts with 'C'.",
            answer: "China"
        ),
        Tab4QuestionCaptain777(
            question: "What is the capital city of Spain?",
            hint1: "It’s the largest city in Spain.",
            hint2: "Its name starts with 'M'.",
            answer: "Madrid"
        ),
        Tab4QuestionCaptain777(
            question: "What is the hardest part of the human body?",
            hint1: "It’s part of the teeth.",
            hint2: "Its name starts with 'E'.",
            answer: "Enamel"
        ),
        Tab4QuestionCaptain777(
            question: "What is the name of the largest moon of Saturn?",
            hint1: "It’s larger than the planet Mercury.",
            hint2: "Its name starts with 'T'.",
            answer: "Titan"
        ),
        Tab4QuestionCaptain777(
            question: "What is the most abundant gas in the Earth's atmosphere?",
            hint1: "It makes up about 78% of the air.",
            hint2: "Its name starts with 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionCaptain777(
            question: "Which instrument is used to measure earthquakes?",
            hint1: "It’s a type of graphing device.",
            hint2: "Its name starts with 'S'.",
            answer: "Seismograph"
        )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
