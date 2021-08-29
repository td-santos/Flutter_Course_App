import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';
import 'package:flutter_course_app/models/course.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  const CourseDescription({ Key key,@required this.course }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(course.authorImg,width: 20,)
              ),
              SizedBox(width: 5,),
              Text(course.author, style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kFontLight
                ),
              ),
              Icon(Icons.access_time,size: 20, color: kAccent,),
              SizedBox(width: 5,),
              Text('1h 35min', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kFont
              ),)
            ],
          ),
          SizedBox(height: 15,),
          Text(course.title,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: kFont
          ),),
          SizedBox(height: 12,),
          Text('How we develop speech and how it\nbecame such a powerfull toll, let\'see.',
            style: TextStyle(
              wordSpacing: 2,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: kFontLight
            ),)
        ],
      ),
    );
  }
}