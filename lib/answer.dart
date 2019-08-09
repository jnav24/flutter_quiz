import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
	final Function _answerQuestion;

	Answer(this._answerQuestion);

	@override
	Widget build(BuildContext context) {
    	return Container(
			child: RaisedButton(
				child: Text('Answer 1'),
				color: Colors.blue,
				onPressed: this._answerQuestion,
			),
			width: double.infinity,
		);
  	}
}