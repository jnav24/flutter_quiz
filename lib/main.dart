import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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

	Widget _finishQuestionState() {
		return Center(
			child: Column(
				children: <Widget>[
					Text(
						'All done. - Mikey'
					),
					RaisedButton(
						child: Text('Start quiz over'),
						onPressed: () => this._resetQuestionIndex(),
					)
				],
			),
		);
	}

	Widget _getQuestions() {
		return Column(
			children: <Widget>[
				Question(this.questions[this.questionIndex]['question']),
				...(this.questions[this.questionIndex]['answers'] as List<String>).map((answer) {
					return Answer(this._answerQuestion, answer);
				}).toList(),
			],
		);
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text('hello'),
				),
				body: this._hasMoreQuestions() ? this._getQuestions() : this._finishQuestionState(),
			)
		);
	}
}
