import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';
import 'package:flutter_course_app/screens/home/widget/category_title.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle(leftText: 'Currently active', rightText: 'view all',),
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: kFontLight.withOpacity(0.1),
            border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/image_3.jpg',width: 60,height: 60,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Symetry theory',style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kFont
                      ),),
                      Text('2 lessons left', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: kFontLight
                      ),)
                    ],
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 60,
                lineWidth:6,
                percent: 0.61,
                progressColor: kAccent,
                backgroundColor: kPrymaryDark.withOpacity(0.1),
                circularStrokeCap: CircularStrokeCap.round,
                center: Text('61%', style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),

              )
            ],
          ),
        )
      ],
    );
  }
}