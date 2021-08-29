import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';
import 'package:flutter_course_app/models/course.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  const CustomAppBar({ Key key, this.course }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)
                ),
                height: 300,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(course.imageUrl,fit: BoxFit.cover,),
                ),
              ),
              Container(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(                
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
                child: Text('Start Class'),
              ),
            )
          ),

          Positioned(
            top: 50, //MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,), 
                iconSize: 20,
                onPressed: (){
                  Navigator.of(context).pop();
                }),
            )
            ),

            Positioned(
              top: 50,
              right: 25,
              child: Container(
              height: 50,
              width: 50,
              //padding: EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)
              ),
              child: IconButton(
                icon: Icon(Icons.bookmark, color: Colors.white,), 
                iconSize: 23,
                onPressed: (){}),
            )
            )
        ],
      )
    );
  }
}