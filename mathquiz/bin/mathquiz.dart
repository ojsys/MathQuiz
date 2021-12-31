import 'dart:io';

String prompt(String promptText) {
  print(promptText);
  String answer = stdin.readLineSync().toString();
  return answer;
}

double promptDouble(String promptText) {
  print(promptText);
  double myNum = double.parse(stdin.readLineSync().toString());
  return myNum;
}

class MathQuestion {
  late String question;
  late double answer;

  MathQuestion(String question, double answer) {
    this.question = question;
    this.answer = answer;
  }
}

void main() {
  List<MathQuestion> questions = [
    MathQuestion("3 + 6", 3 + 6),
    MathQuestion("10 - 7", 10 - 7),
    MathQuestion("100 * 9", 100 * 9),
    MathQuestion("12 * 12", 12 * 12),
    MathQuestion("15-4", 15 - 4),
    MathQuestion("2 + 9", 2 + 9),
    MathQuestion("30 - 17", 30 - 17),
    MathQuestion("110 * 12", 110 * 12),
    MathQuestion("12 / 12", 12 / 12),
    MathQuestion("15 / 4", 15 / 3),
  ];

  for (MathQuestion mathQuestion in questions) {
    //Get user's answer
    double userAnswer = promptDouble(mathQuestion.question);
    //check if answer is correct or not
    if (userAnswer == mathQuestion.answer) {
      print("You are correct!");
      print("........................");
    } else {
      print("Incorrect, the answer was ${mathQuestion.answer}");
      print("........................");
    }
  }
}
