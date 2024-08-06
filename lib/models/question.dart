final List<Question> questions = [
  Question(
    questionText: "What is Dart primarily used for?",
    options: ["Web development", "Mobile app development", "Server-side development", "All of the above"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "What is the main framework used with Dart for building mobile apps?",
    options: ["React Native", "Flutter", "Xamarin", "Ionic"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "What is the keyword used to declare a constant in Dart?",
    options: ["final", "const", "static", "immutable"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Which of the following is the entry point of a Dart application?",
    options: ["start()", "main()", "begin()", "init()"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "How do you define a single-line comment in Dart?",
    options: ["// comment", "/* comment */", "<!-- comment -->", "# comment"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "What is the extension for Dart files?",
    options: [".dart", ".drt", ".dt", ".d"],
    correctOptionIndex: 0,
  ),
  Question(
    questionText: "Which Dart keyword is used to create a class?",
    options: ["struct", "class", "object", "type"],
    correctOptionIndex: 1,
  ),
  Question(
    questionText: "Which of the following is a valid data type in Dart?",
    options: ["int", "num", "String", "All of the above"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "How do you declare an integer variable in Dart?",
    options: ["int number;", "var number;", "num number;", "All of the above"],
    correctOptionIndex: 3,
  ),
  Question(
    questionText: "What method is used to print to the console in Dart?",
    options: ["System.out.println()", "print()", "echo()", "console.log()"],
    correctOptionIndex: 1,
  )
];

class Question {
  String questionText;
  List<String> options;
  int correctOptionIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });

  // Factory method to create a Question from a Map
  factory Question.fromMap(Map<String, dynamic> data) {
    return Question(
      questionText: data['questionText'],
      options: List<String>.from(data['options']),
      correctOptionIndex: data['correctOptionIndex'],
    );
  }
}