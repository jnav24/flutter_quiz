import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
	@override
	_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
	int questionIndex = 0;
	final List<Map<String, dynamic>> questions = [
		{
			'question': 'What is your favorite color?',
			'answers': [
				{'text': 'black', 'score': 25},
				{'text': 'red', 'score': 50},
				{'text': 'blue', 'score': 75},
				{'text': 'green', 'score': 100},
			],
		},
		{
			'question': 'What is your favorite animal?',
			'answers': [
				{'text': 'lion', 'score': 25},
				{'text': 'bird', 'score': 50},
				{'text': 'bear', 'score': 75},
				{'text': 'shark', 'score': 100},
			],
		},
	];
	int _totalScore = 0;

	void _answerQuestion(int score) {
		this._totalScore += score;
		setState(() {
			if (this._hasMoreQuestions()) {
				this.questionIndex = this.questionIndex + 1;
			}
		});
	}

	void _resetQuestionIndex() {
		setState(() {
			this._totalScore = 0;
			this.questionIndex = 0;
		});
	}

	bool _hasMoreQuestions() {
		return this.questionIndex < (this.questions.length);
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text('hello'),
				),
				body: this._hasMoreQuestions() ?
				Quiz(this.questionIndex, this.questions, this._answerQuestion) :
				Result(this._resetQuestionIndex, this._totalScore),
			)
		);
	}
}
