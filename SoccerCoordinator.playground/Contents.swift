//SoccerCoordinator by Angus Muller

// Storing each players data in their own collection


let player1: [String: Any] = ["NAME": "Joe Smith", "HEIGHT": 42, "EXP": true, "GUARDIAN": "Jim and Jan Smith"]
let player2: [String: Any] = ["NAME": "Jill Tanner", "HEIGHT": 36, "EXP": true, "GUARDIAN": "Clara Tanner"]
let player3: [String: Any] = ["NAME": "Bill Bon", "HEIGHT": 43, "EXP": true, "GUARDIAN": "Sara and Jenny Bon"]
let player4: [String: Any] = ["NAME": "Eva Gordon", "HEIGHT": 45, "EXP": false, "GUARDIAN": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["NAME": "Matt Gill", "HEIGHT": 40, "EXP": false, "GUARDIAN": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["NAME": "Kimmy Stein", "HEIGHT": 41, "EXP": false, "GUARDIAN": "Bill and Hilary Stein"]
let player7: [String: Any] = ["NAME": "Sammy Adams", "HEIGHT": 45, "EXP": false, "GUARDIAN": "Jeff Adams"]
let player8: [String: Any] = ["NAME": "Karl Saygan", "HEIGHT": 42, "EXP": true, "GUARDIAN": "Heather Bledsoe"]
let player9: [String: Any] = ["NAME": "Suzane Greenberg", "HEIGHT": 44, "EXP": true, "GUARDIAN": "Henrietta Dumas"]
let player10: [String: Any] = ["NAME": "Sal Dali", "HEIGHT": 41, "EXP": false, "GUARDIAN": "Gala Dali"]
let player11: [String: Any] = ["NAME": "Joe Kavalier", "HEIGHT": 39, "EXP": false, "GUARDIAN": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["NAME": "Ben Finkelstein", "HEIGHT": 44, "EXP": false, "GUARDIAN": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["NAME": "Diego Soto", "HEIGHT": 41, "EXP": true, "GUARDIAN": "Robin and Sarika Soto"]
let player14: [String: Any] = ["NAME": "Chloe Alaska", "HEIGHT": 47, "EXP": false, "GUARDIAN": "David and Jamie Alaska"]
let player15: [String: Any] = ["NAME": "Arnold Willis", "HEIGHT": 43, "EXP": false, "GUARDIAN": "Claire Willis"]
let player16: [String: Any] = ["NAME": "Phillip Helm", "HEIGHT": 44, "EXP": true, "GUARDIAN": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["NAME": "Les Clay", "HEIGHT": 42, "EXP": true, "GUARDIAN": "Wynonna Brown"]
let player18: [String: Any] = ["NAME": "Herschel Krustofski", "HEIGHT": 45, "EXP": true, "GUARDIAN": "Hyman and Rachel Krustofski"]

// One collection for all players data

var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

/*
 ---------------------------------------------------
 First to split players with and without experience
 ---------------------------------------------------
 */

// Empty container to split players
var hasExp: [Any] = []
var noExp: [Any] = []

// Counting number of players in container for loop
var counter = players.count
var countSort = 1

// Sorting players into has or hasnot experience containers loop
while countSort <= counter {
for object in players {
    let experience = object["EXP"] as! Bool
    switch experience {
    case true: hasExp.append(object)
    case false: noExp.append(object)
    default: break
    }
}
/*
 ---------------------------------------------------
 Splitting both lists up evengly into the three teams
w ---------------------------------------------------
 */

// Empty array for three soccer teams

var teamSharks: [Any] = []
var teamDragons: [Any] = []
var teamRaptors: [Any] = []
var hasExpIndex = 0
var noExpIndex = 0

// While loop to split has experience into 3 teams

while hasExpIndex < hasExp.count {
    teamSharks.append(hasExp[hasExpIndex])
    hasExpIndex += 1
    teamDragons.append(hasExp[hasExpIndex])
    hasExpIndex += 1
    teamRaptors.append(hasExp[hasExpIndex])
    hasExpIndex += 1
}

// While loop to split no experience into 3 teams

while noExpIndex < noExp.count {
    teamSharks.append(noExp[noExpIndex])
    noExpIndex += 1
    teamDragons.append(noExp[noExpIndex])
    noExpIndex += 1
    teamRaptors.append(noExp[noExpIndex])
    noExpIndex += 1
}

teamSharks
teamDragons
teamRaptors

/* 
-----------------------
 logic to print letter
-----------------------
 */

// testing printing data from teams, if you remove the below above code does work

for object in teamDragons {
    for (key, value) in object {
        print(key[YES])
    }
}
