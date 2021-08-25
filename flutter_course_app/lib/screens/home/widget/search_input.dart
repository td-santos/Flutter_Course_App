import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 2),
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search for history, classes, ...',
                hintStyle: TextStyle(color: kFontLight)
              ),
            ),
          ),
          Positioned(
            right: 35,
            top: 35,
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: kAccent,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(Icons.search,color: kPrimaryLight,),
            )
          )
        ],
      ),
    );
  }
}