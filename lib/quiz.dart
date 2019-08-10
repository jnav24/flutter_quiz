import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
	final List<Map<String, Object>> _questions;
	final Function _answerQuestion;
	final int _questionIndex;

	Quiz(this._questionIndex, this._questions, this._answerQuestion);

	@override
	Widget build(BuildContext context) {
		return Column(
			children: <Widget>[
				Question(this._questions[this._questionIndex]['question']),
				...(this._questions[this._questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
					return Answer(() => this._answerQuestion(answer['score']), answer['text']);
				}).toList(),
			],
		);
	}
}