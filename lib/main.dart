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
	List<String> questions = [
		'What is your favorite color?',
		'What is your favorite animal?'
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
						Question(this.questions[this.questionIndex]),
						Answer(this._answerQuestion),
					],
				),
			)
		);
	}
}
