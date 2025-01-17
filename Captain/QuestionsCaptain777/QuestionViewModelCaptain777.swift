//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelCaptain77734: ObservableObject {
    let typeOfGame: GameTypeCaptain77734
    
    var vwrfv = "wfvrwv"
    var wrfvwr = 2452
    func vwrfvw() -> String {
        return "wrfvwrfvw"
    }
    func wrfvwrfvwrfvw() {
        print("wvrfvwrf")
    }
    
    
    func cwrcfrc() -> Double {
        print(245245 / 2452452)
        return 245245245 * 2452452
    }
    var qecefcqef = [245245245.245245245: "wrfvwrfvrw"]
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionCaptain77734]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionCaptain77734 {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeCaptain77734) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionCaptain77734.advancedQuestions.shuffled().prefix(21))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 {
                player2RightAnswers += 1
            } else {
                player1RightAnswers += 1
            }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 || (typeOfGame == .withC && questionNumber >= 19) {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1].randomElement()!
                } else {
                    questionNumber += 1
                }
            }
        }
    }
}


enum GameTypeCaptain77734 {
    case oneP
    case withC
    case withF
}

struct QuestionCaptain77734 {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    static let advancedQuestions: [QuestionCaptain77734] = [
        QuestionCaptain77734(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Tokyo", "Osaka", "Kyoto", "Nagoya"]
        ),
        QuestionCaptain77734(
            question: "Which gas is most abundant in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"]
        ),
        QuestionCaptain77734(
            question: "What is the primary function of red blood cells?",
            correctAnswer: "Transport oxygen",
            answerOptions: ["Fight infections", "Transport oxygen", "Clot blood", "Provide energy"]
        ),
        QuestionCaptain77734(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Jupiter", "Mars", "Earth", "Saturn"]
        ),
        QuestionCaptain77734(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Graphite", "Diamond", "Quartz", "Gold"]
        ),
        QuestionCaptain77734(
            question: "What is the smallest unit of life?",
            correctAnswer: "Cell",
            answerOptions: ["Tissue", "Organ", "Cell", "Molecule"]
        ),
        QuestionCaptain77734(
            question: "Which famous scientist developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Marie Curie", "Nikola Tesla"]
        ),
        QuestionCaptain77734(
            question: "What is the boiling point of water in Celsius?",
            correctAnswer: "100",
            answerOptions: ["90", "100", "110", "120"]
        ),
        QuestionCaptain77734(
            question: "What is the currency used in the United Kingdom?",
            correctAnswer: "Pound Sterling",
            answerOptions: ["Euro", "Dollar", "Pound Sterling", "Yen"]
        ),
        QuestionCaptain77734(
            question: "What is the largest organ in the human body?",
            correctAnswer: "Skin",
            answerOptions: ["Liver", "Lungs", "Brain", "Skin"]
        ),
        QuestionCaptain77734(
            question: "What is the process by which plants make their own food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Respiration", "Digestion", "Photosynthesis", "Fermentation"]
        ),
        QuestionCaptain77734(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Oxygen", "Hydrogen", "Helium", "Carbon"]
        ),
        QuestionCaptain77734(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Femur", "Stapes", "Ulna", "Rib"]
        ),
        QuestionCaptain77734(
            question: "Which ocean is the largest by area?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"]
        ),
        QuestionCaptain77734(
            question: "What is the main ingredient in traditional Japanese sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Fish", "Seaweed", "Rice", "Soy Sauce"]
        ),
        QuestionCaptain77734(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Vincent van Gogh", "Leonardo da Vinci", "Pablo Picasso", "Claude Monet"]
        ),
        QuestionCaptain77734(
            question: "Which planet is known as the 'Morning Star'?",
            correctAnswer: "Venus",
            answerOptions: ["Mars", "Jupiter", "Venus", "Mercury"]
        ),
        QuestionCaptain77734(
            question: "What is the main component of the Sun?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Helium", "Hydrogen", "Carbon", "Oxygen"]
        ),
        QuestionCaptain77734(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Gobi", "Kalahari", "Sahara", "Antarctica"]
        ),
        QuestionCaptain77734(
            question: "Which organelle is known as the powerhouse of the cell?",
            correctAnswer: "Mitochondria",
            answerOptions: ["Nucleus", "Ribosome", "Mitochondria", "Golgi Apparatus"]
        ),
        QuestionCaptain77734(
            question: "Which element is represented by the symbol 'Fe'?",
            correctAnswer: "Iron",
            answerOptions: ["Iron", "Fluorine", "Gold", "Zinc"]
        ),
        QuestionCaptain77734(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Everest", "K2", "Kangchenjunga", "Makalu"]
        ),
        QuestionCaptain77734(
            question: "What is the primary language spoken in Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Spanish", "Portuguese", "French", "English"]
        ),
        QuestionCaptain77734(
            question: "What is the term for animals that only eat plants?",
            correctAnswer: "Herbivores",
            answerOptions: ["Omnivores", "Carnivores", "Herbivores", "Insectivores"]
        ),
        QuestionCaptain77734(
            question: "Which chemical element is known as the 'King of Chemicals'?",
            correctAnswer: "Sulfuric Acid",
            answerOptions: ["Sulfuric Acid", "Hydrochloric Acid", "Nitric Acid", "Acetic Acid"]
        ),
        QuestionCaptain77734(
            question: "Which country gifted the Statue of Liberty to the United States?",
            correctAnswer: "France",
            answerOptions: ["France", "United Kingdom", "Italy", "Germany"]
        ),
        QuestionCaptain77734(
            question: "What is the SI unit of electric current?",
            correctAnswer: "Ampere",
            answerOptions: ["Volt", "Ohm", "Ampere", "Watt"]
        ),
        QuestionCaptain77734(
            question: "Which planet is the hottest in the solar system?",
            correctAnswer: "Venus",
            answerOptions: ["Mercury", "Venus", "Mars", "Jupiter"]
        ),
        QuestionCaptain77734(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Amazon", "Nile", "Yangtze", "Mississippi"]
        ),
        QuestionCaptain77734(
            question: "Which metal is the best conductor of electricity?",
            correctAnswer: "Silver",
            answerOptions: ["Copper", "Silver", "Gold", "Aluminum"]
        ),
        QuestionCaptain77734(
            question: "Which bird is often associated with delivering babies in folklore?",
            correctAnswer: "Stork",
            answerOptions: ["Stork", "Swan", "Owl", "Eagle"]
        ),
        QuestionCaptain77734(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Avocado", "Lime", "Cucumber"]
        ),
        QuestionCaptain77734(
            question: "Which country has the most time zones?",
            correctAnswer: "France",
            answerOptions: ["Russia", "United States", "China", "France"]
        ),
        QuestionCaptain77734(
            question: "What is the main gas found in the air we breathe?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Helium"]
        ),
        QuestionCaptain77734(
            question: "Which part of the plant conducts photosynthesis?",
            correctAnswer: "Leaf",
            answerOptions: ["Root", "Stem", "Leaf", "Flower"]
        ),
        QuestionCaptain77734(
            question: "Which ocean is the deepest?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Southern Ocean"]
        ),
        QuestionCaptain77734(
            question: "Which vitamin is produced in the skin when exposed to sunlight?",
            correctAnswer: "Vitamin D",
            answerOptions: ["Vitamin A", "Vitamin C", "Vitamin D", "Vitamin E"]
        ),
        QuestionCaptain77734(
            question: "What is the fastest bird in the world?",
            correctAnswer: "Peregrine Falcon",
            answerOptions: ["Golden Eagle", "Peregrine Falcon", "Albatross", "Hawk"]
        ),
        QuestionCaptain77734(
            question: "What is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Monaco", "San Marino", "Vatican City", "Liechtenstein"]
        ),
        QuestionCaptain77734(
            question: "Which mammal is known to have the most powerful bite?",
            correctAnswer: "Hippopotamus",
            answerOptions: ["Lion", "Hippopotamus", "Crocodile", "Shark"]
        ),
        QuestionCaptain77734(
            question: "Which gas makes up most of Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Argon"]
        ),
        QuestionCaptain77734(
            question: "What is the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Australia", "Greenland", "New Guinea", "Borneo"]
        ),
        QuestionCaptain77734(
            question: "Which is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Lion", "Cheetah", "Leopard", "Antelope"]
        ),
        QuestionCaptain77734(
            question: "What is the currency used in Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yuan", "Yen", "Won", "Ringgit"]
        ),
        QuestionCaptain77734(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Lead", "Mercury", "Gold", "Silver"]
        ),
        QuestionCaptain77734(
            question: "What is the world's largest ocean?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Southern Ocean", "Pacific Ocean"]
        ),
        QuestionCaptain77734(
            question: "Which instrument is used to measure atmospheric pressure?",
            correctAnswer: "Barometer",
            answerOptions: ["Thermometer", "Hygrometer", "Barometer", "Anemometer"]
        ),
        QuestionCaptain77734(
            question: "Which planet is known as the 'Red Planet'?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"]
        ),
        QuestionCaptain77734(
            question: "What is the largest land animal on Earth?",
            correctAnswer: "African Elephant",
            answerOptions: ["African Elephant", "White Rhinoceros", "Giraffe", "Blue Whale"]
        ),
        QuestionCaptain77734(
            question: "Which element has the atomic number 79?",
            correctAnswer: "Gold",
            answerOptions: ["Iron", "Silver", "Gold", "Copper"]
        ),
        QuestionCaptain77734(
            question: "What is the main source of energy for the Earth?",
            correctAnswer: "Sun",
            answerOptions: ["Moon", "Sun", "Electricity", "Wind"]
        ),
        QuestionCaptain77734(
            question: "Which human organ is capable of regenerating tissue?",
            correctAnswer: "Liver",
            answerOptions: ["Heart", "Kidney", "Liver", "Lung"]
        ),
        QuestionCaptain77734(
            question: "Which animal can go without water the longest?",
            correctAnswer: "Kangaroo rat",
            answerOptions: ["Camel", "Kangaroo rat", "Elephant", "Giraffe"]
        ),
        QuestionCaptain77734(
            question: "Which city is known as the 'City of Light'?",
            correctAnswer: "Paris",
            answerOptions: ["Rome", "New York", "Paris", "Berlin"]
        ),
        QuestionCaptain77734(
            question: "What is the hardest known natural material on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Steel"]
        ),
        QuestionCaptain77734(
            question: "What is the tallest tree species on Earth?",
            correctAnswer: "Coast Redwood",
            answerOptions: ["Douglas Fir", "Coast Redwood", "Sequoia", "Eucalyptus"]
        ),
        QuestionCaptain77734(
            question: "Which planet is the second from the Sun?",
            correctAnswer: "Venus",
            answerOptions: ["Mercury", "Venus", "Earth", "Mars"]
        ),
        QuestionCaptain77734(
            question: "Which country invented the first mechanical clock?",
            correctAnswer: "China",
            answerOptions: ["Greece", "Rome", "China", "Egypt"]
        ),
        QuestionCaptain77734(
            question: "What type of animal is the largest living creature in the ocean?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Shark", "Whale Shark", "Blue Whale", "Giant Squid"]
        ),
        QuestionCaptain77734(
            question: "Which country has the most pyramids in the world?",
            correctAnswer: "Sudan",
            answerOptions: ["Egypt", "Mexico", "Sudan", "Peru"]
        ),
        QuestionCaptain77734(
            question: "What is the largest desert in the world?",
            correctAnswer: "Antarctic Desert",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Antarctic Desert"]
        ),
        QuestionCaptain77734(
            question: "Which chemical element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Oxygen", "Carbon", "Nitrogen"]
        ),
        QuestionCaptain77734(
            question: "Which famous physicist developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Nikola Tesla", "Galileo Galilei"]
        ),
        QuestionCaptain77734(
            question: "What is the largest volcano on Earth?",
            correctAnswer: "Mauna Loa",
            answerOptions: ["Mount Fuji", "Mount Etna", "Krakatoa", "Mauna Loa"]
        ),
        QuestionCaptain77734(
            question: "Which is the longest river in South America?",
            correctAnswer: "Amazon River",
            answerOptions: ["Amazon River", "Orinoco River", "Paraná River", "São Francisco River"]
        ),
        QuestionCaptain77734(
            question: "Which animal is known for its ability to regenerate lost limbs?",
            correctAnswer: "Axolotl",
            answerOptions: ["Axolotl", "Starfish", "Lizard", "Salmon"]
        ),
        QuestionCaptain77734(
            question: "Which language has the most native speakers in the world?",
            correctAnswer: "Mandarin Chinese",
            answerOptions: ["English", "Spanish", "Mandarin Chinese", "Hindi"]
        ),
        QuestionCaptain77734(
            question: "Which country has the most official languages?",
            correctAnswer: "South Africa",
            answerOptions: ["Switzerland", "India", "South Africa", "Belgium"]
        ),
        QuestionCaptain77734(
            question: "Which is the longest bone in the human body?",
            correctAnswer: "Femur",
            answerOptions: ["Tibia", "Femur", "Humerus", "Radius"]
        ),
        QuestionCaptain77734(
            question: "Which planet has the longest day in our solar system?",
            correctAnswer: "Venus",
            answerOptions: ["Mercury", "Venus", "Earth", "Jupiter"]
        ),
        QuestionCaptain77734(
            question: "Which is the smallest country in Africa by area?",
            correctAnswer: "Seychelles",
            answerOptions: ["Seychelles", "Malawi", "Burundi", "The Gambia"]
        ),
        QuestionCaptain77734(
            question: "What is the only country that is also a continent?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "Greenland", "India", "Antarctica"]
        ),
        QuestionCaptain77734(
            question: "Which is the smallest ocean in the world?",
            correctAnswer: "Arctic Ocean",
            answerOptions: ["Atlantic Ocean", "Pacific Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionCaptain77734(
            question: "What is the fastest-growing plant in the world?",
            correctAnswer: "Bamboo",
            answerOptions: ["Oak", "Bamboo", "Pine", "Cedar"]
        ),
        QuestionCaptain77734(
            question: "What is the most abundant element in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Iron", "Oxygen", "Silicon", "Aluminum"]
        ),
        QuestionCaptain77734(
            question: "What is the longest-running TV show in history?",
            correctAnswer: "The Simpsons",
            answerOptions: ["The Simpsons", "Friends", "The Tonight Show", "Doctor Who"]
        ),
        QuestionCaptain77734(
            question: "Which planet is known for its rings?",
            correctAnswer: "Saturn",
            answerOptions: ["Jupiter", "Saturn", "Uranus", "Neptune"]
        ),
        QuestionCaptain77734(
            question: "Which famous structure was built as a symbol of love?",
            correctAnswer: "Taj Mahal",
            answerOptions: ["Eiffel Tower", "Great Wall of China", "Colosseum", "Taj Mahal"]
        ),
        QuestionCaptain77734(
            question: "Which animal is known as the 'King of the Jungle'?",
            correctAnswer: "Lion",
            answerOptions: ["Tiger", "Lion", "Elephant", "Leopard"]
        ),
        QuestionCaptain77734(
            question: "What is the most widely spoken language in the world?",
            correctAnswer: "English",
            answerOptions: ["Mandarin", "English", "Spanish", "Arabic"]
        ),
        QuestionCaptain77734(
            question: "Which country is home to the Great Barrier Reef?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "New Zealand", "Philippines", "Indonesia"]
        ),
        QuestionCaptain77734(
            question: "Which planet is the hottest in our solar system?",
            correctAnswer: "Venus",
            answerOptions: ["Mercury", "Venus", "Mars", "Jupiter"]
        ),
        QuestionCaptain77734(
            question: "What is the capital city of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Vancouver", "Ottawa", "Montreal"]
        ),
        QuestionCaptain77734(
            question: "Which animal is known for its black and white stripes?",
            correctAnswer: "Zebra",
            answerOptions: ["Giraffe", "Zebra", "Panda", "Skunk"]
        ),
        QuestionCaptain77734(
            question: "What is the primary ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Avocado", "Onion", "Lime"]
        ),
        QuestionCaptain77734(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["China", "Japan", "South Korea", "India"]
        ),
        QuestionCaptain77734(
            question: "What is the deepest part of the world's oceans?",
            correctAnswer: "Mariana Trench",
            answerOptions: ["Great Barrier Reef", "Bermuda Triangle", "Mariana Trench", "Abyssal Plain"]
        ),
        QuestionCaptain77734(
            question: "Which organ in the human body is responsible for pumping blood?",
            correctAnswer: "Heart",
            answerOptions: ["Lungs", "Kidneys", "Heart", "Liver"]
        ),
        QuestionCaptain77734(
            question: "What is the primary source of energy for the Sun?",
            correctAnswer: "Nuclear fusion",
            answerOptions: ["Nuclear fusion", "Solar wind", "Gravitational force", "Chemical reactions"]
        ),
        QuestionCaptain77734(
            question: "Which is the longest mountain range in the world?",
            correctAnswer: "Andes",
            answerOptions: ["Rocky Mountains", "Himalayas", "Andes", "Alps"]
        ),
        QuestionCaptain77734(
            question: "What is the symbol for the chemical element gold?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Pb", "Cu"]
        ),
        QuestionCaptain77734(
            question: "Which bird is known for its ability to mimic human speech?",
            correctAnswer: "Parrot",
            answerOptions: ["Crow", "Parrot", "Sparrow", "Eagle"]
        ),
        QuestionCaptain77734(
            question: "What is the largest country by land area?",
            correctAnswer: "Russia",
            answerOptions: ["USA", "Canada", "Russia", "China"]
        ),
        QuestionCaptain77734(
            question: "Which is the only continent without a native human population?",
            correctAnswer: "Antarctica",
            answerOptions: ["Africa", "Asia", "Antarctica", "Australia"]
        ),
        QuestionCaptain77734(
            question: "Which is the smallest planet in our solar system?",
            correctAnswer: "Mercury",
            answerOptions: ["Venus", "Earth", "Mars", "Mercury"]
        ),
        QuestionCaptain77734(
            question: "Which planet has the most moons?",
            correctAnswer: "Jupiter",
            answerOptions: ["Saturn", "Jupiter", "Uranus", "Neptune"]
        ),
        QuestionCaptain77734(
            question: "What is the chemical symbol for potassium?",
            correctAnswer: "K",
            answerOptions: ["K", "Na", "Ca", "P"]
        ),
        QuestionCaptain77734(
            question: "Which ocean is the largest by area?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Southern Ocean", "Pacific Ocean"]
        ),
        QuestionCaptain77734(
            question: "Which element is the most abundant in the universe?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Oxygen", "Carbon", "Hydrogen", "Nitrogen"]
        ),
        QuestionCaptain77734(
            question: "Which is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["K2", "Mount Everest", "Kangchenjunga", "Lhotse"]
        ),
        QuestionCaptain77734(
            question: "What is the most widely spoken language in the world?",
            correctAnswer: "Mandarin",
            answerOptions: ["Mandarin", "English", "Spanish", "Hindi"]
        ),
        QuestionCaptain77734(
            question: "Which element is the most abundant in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon", "Argon"]
        ),
        QuestionCaptain77734(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Amazon", "Nile", "Yangtze", "Mississippi"]
        ),
        QuestionCaptain77734(
            question: "Which animal is known as the 'Ship of the Desert'?",
            correctAnswer: "Camel",
            answerOptions: ["Horse", "Elephant", "Camel", "Donkey"]
        ),
        QuestionCaptain77734(
            question: "Which country invented pizza?",
            correctAnswer: "Italy",
            answerOptions: ["Italy", "Greece", "USA", "France"]
        ),
        QuestionCaptain77734(
            question: "Who developed the theory of evolution by natural selection?",
            correctAnswer: "Charles Darwin",
            answerOptions: ["Isaac Newton", "Galileo Galilei", "Charles Darwin", "Albert Einstein"]
        ),
        QuestionCaptain77734(
            question: "What is the largest species of shark?",
            correctAnswer: "Whale Shark",
            answerOptions: ["Great White Shark", "Hammerhead Shark", "Whale Shark", "Tiger Shark"]
        ),
        QuestionCaptain77734(
            question: "Which planet is known for its rings?",
            correctAnswer: "Saturn",
            answerOptions: ["Jupiter", "Saturn", "Uranus", "Neptune"]
        ),
        QuestionCaptain77734(
            question: "Which country has the largest population in the world?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "USA", "Russia"]
        ),
        QuestionCaptain77734(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Platinum"]
        ),
        QuestionCaptain77734(
            question: "Which planet is closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Venus", "Earth", "Mars", "Mercury"]
        ),
        QuestionCaptain77734(
            question: "Which country is the largest producer of coffee?",
            correctAnswer: "Brazil",
            answerOptions: ["Brazil", "Colombia", "Vietnam", "Ethiopia"]
        ),
        QuestionCaptain77734(
            question: "Which bird is known for its ability to mimic human speech?",
            correctAnswer: "Parrot",
            answerOptions: ["Crow", "Parrot", "Eagle", "Sparrow"]
        ),
        QuestionCaptain77734(
            question: "What is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Monaco", "Vatican City", "San Marino", "Liechtenstein"]
        ),
        QuestionCaptain77734(
            question: "What is the primary gas in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Argon"]
        ),
        QuestionCaptain77734(
            question: "Which famous scientist is known for his three laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Nikola Tesla", "Galileo Galilei"]
        ),
        QuestionCaptain77734(
            question: "Which animal can live both in water and on land?",
            correctAnswer: "Amphibians",
            answerOptions: ["Reptiles", "Mammals", "Amphibians", "Birds"]
        ),
        QuestionCaptain77734(
            question: "What is the longest running animated TV show?",
            correctAnswer: "The Simpsons",
            answerOptions: ["The Simpsons", "Family Guy", "South Park", "The Flintstones"]
        ),
        QuestionCaptain77734(
            question: "What is the deepest ocean in the world?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"]
        ),
        QuestionCaptain77734(
            question: "Which scientist developed the theory of general relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Marie Curie", "Nikola Tesla"]
        ),
        QuestionCaptain77734(
            question: "Which city is known as the 'Big Apple'?",
            correctAnswer: "New York City",
            answerOptions: ["Los Angeles", "Chicago", "New York City", "Miami"]
        ),
        QuestionCaptain77734(
            question: "Which ocean is the second largest by area?",
            correctAnswer: "Atlantic Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Southern Ocean", "Pacific Ocean"]
        ),
        QuestionCaptain77734(
            question: "Which continent is the least populated?",
            correctAnswer: "Antarctica",
            answerOptions: ["Africa", "Asia", "Antarctica", "Europe"]
        ),
        QuestionCaptain77734(
            question: "Which is the longest river in South America?",
            correctAnswer: "Amazon River",
            answerOptions: ["Amazon River", "Orinoco River", "Paraná River", "São Francisco River"]
        ),
        QuestionCaptain77734(
            question: "Which is the largest continent by land area?",
            correctAnswer: "Asia",
            answerOptions: ["Africa", "Asia", "North America", "Europe"]
        ),
        QuestionCaptain77734(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Kyoto", "Seoul", "Tokyo", "Osaka"]
        ),
        QuestionCaptain77734(
            question: "Which animal is known as the 'King of the Jungle'?",
            correctAnswer: "Lion",
            answerOptions: ["Tiger", "Elephant", "Lion", "Leopard"]
        ),
        QuestionCaptain77734(
            question: "What is the hardest known mineral?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Platinum"]
        ),
        QuestionCaptain77734(
            question: "Which country is known for its pyramids?",
            correctAnswer: "Egypt",
            answerOptions: ["Egypt", "Mexico", "China", "Italy"]
        ),
        QuestionCaptain77734(
            question: "Which animal is capable of flight?",
            correctAnswer: "Bat",
            answerOptions: ["Bat", "Bird", "Insect", "Flying Fish"]
        ),
        QuestionCaptain77734(
            question: "Which country has the highest number of islands?",
            correctAnswer: "Sweden",
            answerOptions: ["Canada", "Sweden", "Indonesia", "Australia"]
        ),
        QuestionCaptain77734(
            question: "Which country was the first to land a man on the moon?",
            correctAnswer: "United States",
            answerOptions: ["United States", "Soviet Union", "China", "India"]
        ),
        QuestionCaptain77734(
            question: "What is the longest reigning monarch in the world?",
            correctAnswer: "Queen Elizabeth II",
            answerOptions: ["King Bhumibol Adulyadej", "Queen Elizabeth II", "Emperor Akihito", "King Louis XIV"]
        ),
        QuestionCaptain77734(
            question: "Which country has the most Nobel laureates?",
            correctAnswer: "United States",
            answerOptions: ["Germany", "United States", "United Kingdom", "Sweden"]
        ),
        QuestionCaptain77734(
            question: "Which planet is known for its giant red spot?",
            correctAnswer: "Jupiter",
            answerOptions: ["Saturn", "Jupiter", "Mars", "Neptune"]
        ),
        QuestionCaptain77734(
            question: "What is the name of the first artificial Earth satellite?",
            correctAnswer: "Sputnik 1",
            answerOptions: ["Apollo 11", "Sputnik 1", "Explorer 1", "Vostok 1"]
        ),
        QuestionCaptain77734(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara Desert",
            answerOptions: ["Sahara Desert", "Kalahari Desert", "Gobi Desert", "Arabian Desert"]
        ),
        QuestionCaptain77734(
            question: "What is the name of the first human to travel into space?",
            correctAnswer: "Yuri Gagarin",
            answerOptions: ["Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin", "Valentina Tereshkova"]
        ),
        QuestionCaptain77734(
            question: "Which element is the most abundant in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Iron", "Oxygen", "Aluminum", "Silicon"]
        ),
        QuestionCaptain77734(
            question: "Which is the largest living species of lizard?",
            correctAnswer: "Komodo Dragon",
            answerOptions: ["Iguana", "Bearded Dragon", "Komodo Dragon", "Monitor Lizard"]
        ),
        QuestionCaptain77734(
            question: "What is the capital city of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Barcelona", "Seville", "Madrid", "Valencia"]
        ),
        QuestionCaptain77734(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Femur", "Stapes", "Tibia", "Patella"]
        ),
        QuestionCaptain77734(
            question: "Which country is famous for the Taj Mahal?",
            correctAnswer: "India",
            answerOptions: ["India", "China", "Pakistan", "Nepal"]
        ),
        QuestionCaptain77734(
            question: "What is the highest-grossing film of all time?",
            correctAnswer: "Avatar",
            answerOptions: ["Titanic", "Avengers: Endgame", "Avatar", "Star Wars: The Force Awakens"]
        ),
        QuestionCaptain77734(
            question: "Which scientist is known for his laws of motion and universal gravitation?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Albert Einstein", "Galileo Galilei", "Isaac Newton", "Nikola Tesla"]
        ),
        QuestionCaptain77734(
            question: "What is the national flower of Japan?",
            correctAnswer: "Cherry Blossom",
            answerOptions: ["Rose", "Cherry Blossom", "Tulip", "Lily"]
        ),
        QuestionCaptain77734(
            question: "Which human organ is capable of regeneration?",
            correctAnswer: "Liver",
            answerOptions: ["Heart", "Liver", "Lungs", "Kidneys"]
        ),
        QuestionCaptain77734(
            question: "Which country is known for the Great Wall?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "Japan", "Vietnam"]
        ),
        QuestionCaptain77734(
            question: "What is the most common blood type in the world?",
            correctAnswer: "O+",
            answerOptions: ["A+", "O+", "B+", "AB+"]
        ),
        QuestionCaptain77734(
            question: "Which country is the largest producer of chocolate?",
            correctAnswer: "United States",
            answerOptions: ["Belgium", "United States", "Switzerland", "Germany"]
        ),
        QuestionCaptain77734(
            question: "What is the longest human bone?",
            correctAnswer: "Femur",
            answerOptions: ["Tibia", "Femur", "Radius", "Humerus"]
        ),
        QuestionCaptain77734(
            question: "Which city is known as the 'City of Light'?",
            correctAnswer: "Paris",
            answerOptions: ["New York", "Tokyo", "London", "Paris"]
        ),
        QuestionCaptain77734(
            question: "Which fish is known for its ability to produce electricity?",
            correctAnswer: "Electric Eel",
            answerOptions: ["Electric Eel", "Shark", "Piranha", "Salmon"]
        ),
        QuestionCaptain77734(
            question: "Which country invented the paper?",
            correctAnswer: "China",
            answerOptions: ["China", "Egypt", "India", "Greece"]
        ),
        QuestionCaptain77734(
            question: "What is the longest-running Broadway show?",
            correctAnswer: "The Phantom of the Opera",
            answerOptions: ["Les Miserables", "The Lion King", "The Phantom of the Opera", "Cats"]
        ),
        QuestionCaptain77734(
            question: "Which animal is known for its ability to regenerate limbs?",
            correctAnswer: "Axolotl",
            answerOptions: ["Starfish", "Axolotl", "Lizard", "Crab"]
        ),
        QuestionCaptain77734(
            question: "Which planet has the longest day?",
            correctAnswer: "Venus",
            answerOptions: ["Mercury", "Venus", "Mars", "Earth"]
        )
    ]
}
