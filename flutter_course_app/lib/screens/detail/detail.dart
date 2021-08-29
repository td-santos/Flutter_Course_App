import 'package:flutter/material.dart';
import 'package:flutter_course_app/models/course.dart';
import 'package:flutter_course_app/screens/detail/widget/course_description.dart';
import 'package:flutter_course_app/screens/detail/widget/course_progress.dart';
import 'package:flutter_course_app/screens/detail/widget/custom_appbar.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  const DetailPage({ Key key,@required this.course }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course: course,),
            CourseDescription(course: course,),
            CourseProgress()
          ],
        ),
      ),
    );
  }
}