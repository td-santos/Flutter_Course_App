import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';

class Emojitext extends StatelessWidget {
  const Emojitext({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Let\s boost your \nbrain power ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: kFont
              )
            ),
            TextSpan(
              text: '✨',
              style: TextStyle(
                fontSize: 26
              )
            )
          ]
        ),
      ),
    );
  }
}