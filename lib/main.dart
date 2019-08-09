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
	List<Map<String, dynamic>> questions = [
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
			if (this.questionIndex < (this.questions.length - 1)) {
				this.questionIndex = this.questionIndex + 1;
			} else {
				this.questionIndex = 0;
			}
		});
		print(this.questions[this.questionIndex]);
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text('hello'),
				),
				body: Column(
					children: <Widget>[
						Question(this.questions[this.questionIndex]['question']),
						...(this.questions[this.questionIndex]['answers'] as List<String>).map((answer) {
							return Answer(this._answerQuestion, answer);
						}).toList(),
					],
				),
			)
		);
	}
}
