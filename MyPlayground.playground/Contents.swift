
// Don't change this
var studentsAndScores = ["Amy": 10, "James": 40, "Helen": 50]

func highestScore(scores: [String: Int]) {
  
  // Find the highest score using the dictionary values
  if let highestScore = scores.values.max() {
      print(highestScore)
  } else {
      print("No scores available.")
  }
}

// Don't change this
highestScore(scores: studentsAndScores)

