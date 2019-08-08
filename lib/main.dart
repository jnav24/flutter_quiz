import 'package:flutter/material.dart';

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

	void answerQuestion() {
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
						Text(this.questions[this.questionIndex]),
						RaisedButton(
							child: Text('click me'),
							onPressed: answerQuestion,
						),
					],
				),
			)
		);
	}
}
