import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';
import 'package:flutter_course_app/models/course.dart';

class CourseItem extends StatelessWidget {

  final Course course;
  const CourseItem({ Key key, @required this.course }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(             
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      ),
                      child: Image.asset(course.imageUrl,fit: BoxFit.cover,),
                    ),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(course.authorImg, width: 15,)),
                            SizedBox(width: 5,),
                            Text(course.author, style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(height: 5 ,),
                        Row(
                          children: [
                            Container(
                              width: 140,
                              child: Text(course.title, overflow: TextOverflow.ellipsis,style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: kFont
                              ),),
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: kFontLight,
                                shape: BoxShape.circle
                              ),
                            ),
                            Text('2h 22min',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: kFontLight,
                            ),)
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              child: Text(' Start '),
            )
          )
        ],
      ),
    );
  }
}