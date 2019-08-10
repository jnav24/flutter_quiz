import 'package:flutter/material.dart';

class Result extends StatelessWidget {
	final Function _resetQuestionIndex;

	Result(this._resetQuestionIndex);

	@override
	Widget build(BuildContext context) {
		return Center(
			child: Column(
				children: <Widget>[
					Text(
						'All done. - Mikey'
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