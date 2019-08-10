import 'package:flutter/material.dart';

class Result extends StatelessWidget {
	final Function _resetQuestionIndex;
	final int _resultScore;

	Result(this._resetQuestionIndex, this._resultScore);

	@override
	Widget build(BuildContext context) {
		return Center(
			child: Column(
				children: <Widget>[
					Text(
						'All done. - Mikey'
					),
					Text(
						'Your score: ${this._resultScore}',
						style: TextStyle(
							fontSize: 36,
							fontWeight: FontWeight.bold,
						),
						textAlign: TextAlign.center,
					),
					RaisedButton(
						child: Text('Start quiz over'),
						onPressed: this._resetQuestionIndex,
					)
				],
			),
		);
	}
}