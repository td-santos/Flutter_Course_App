import 'package:flutter/material.dart';
import 'package:flutter_course_app/models/course.dart';
import 'package:flutter_course_app/screens/home/widget/course_item.dart';

import 'category_title.dart';

class FeatureCourse extends StatelessWidget {

  final courseList = Course.generateCourses();
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle(leftText: 'Top of the week',rightText: 'view all',),
          Container(
            height: 300,
            child: ListView.separated( 
              padding: EdgeInsets.all(25),
              separatorBuilder: (context, index)=> SizedBox( width: 15,),
              itemCount: courseList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return CourseItem(course: courseList[index],);
              }),
          )
        ],
      ),
    );
  }
}