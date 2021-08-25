import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';

class CategoryTitle extends StatelessWidget {

  final String leftText;
  final String rightText;

  const CategoryTitle({ Key key, this.leftText, this.rightText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText,style: TextStyle(
            color: kFont,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          Text(rightText, style: TextStyle(
            color: kFontLight,
            fontWeight: FontWeight.w600,
            fontSize: 16
          ),)
        ],
      ),
    );
  }
}