import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
	final Function _answerQuestion;
	final String _answer;

	Answer(this._answerQuestion, this._answer);

	@override
	Widget build(BuildContext context) {
    	return Container(
			child: RaisedButton(
				child: Text(this._answer),
				color: Colors.blue,
				onPressed: this._answerQuestion,
				textColor: Colors.white,
			),
			padding: EdgeInsets.symmetric(
				horizontal: 10,
				vertical: 5,
			),
			width: double.infinity,
		);
  	}
}