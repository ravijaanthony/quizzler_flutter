import 'package:flutter/material.dart';
import 'package:quizzler_flutter/questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionbank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \'Moon\'.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \'Backrub\'.', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  // Alert with buttons
  _onAlertButtonsPressed(context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Woha!",
      desc: "You have reached the end of the quiz",
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: const Color.fromRGBO(0, 179, 134, 1.0),
          child: const Text(
            "Continue? ",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    ).show();
  }

  void nextQuestion(context, List<Widget> scoreKeeper) {
    if (_questionNumber < _questionbank.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0;
      scoreKeeper.clear();
      _onAlertButtonsPressed(context);
    }

    // print(_questionNumber);
    // print(_questionbank.length);
  }

  String getQuestionText() {
    return _questionbank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionbank[_questionNumber].questionAnswer;
  }
}
