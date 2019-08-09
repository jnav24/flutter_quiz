import 'package:flutter/material.dart';

class Question extends StatelessWidget {
	final String question;

	Question(this.question);

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Text(
				this.question,
				style: TextStyle(
					fontSize: 28,
				),
				textAlign: TextAlign.center,
			),
			margin: EdgeInsets.all(10),
			width: double.infinity,
		);
  	}
}