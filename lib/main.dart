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
				'black',
				'red',
				'blue',
				'green',
			],
		},
		{
			'question': 'What is your favorite animal?',
			'answers': [
				'lion',
				'bird',
				'bear',
				'shark',
			],
		},
	];

	void _answerQuestion() {
		setState(() {
			if (this._hasMoreQuestions()) {
				this.questionIndex = this.questionIndex + 1;
			}
		});
	}

	void _resetQuestionIndex() {
		setState(() {
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
				body: this._hasMoreQuestions() ? Quiz(this.questionIndex, this.questions, this._answerQuestion) : Result(this._resetQuestionIndex),
			)
		);
	}
}
