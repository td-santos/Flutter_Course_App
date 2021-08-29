import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';
import 'package:flutter_course_app/models/course.dart';
import 'package:flutter_course_app/screens/home/widget/active_course.dart';
import 'package:flutter_course_app/screens/home/widget/category_title.dart';
import 'package:flutter_course_app/screens/home/widget/course_item.dart';
import 'package:flutter_course_app/screens/home/widget/emoji_text.dart';
import 'package:flutter_course_app/screens/home/widget/feature_course.dart';
import 'package:flutter_course_app/screens/home/widget/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Emojitext(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse()          
          ],
        ),
      ),
      bottomNavigationBar: _navigationBar(),
    );
  }

  BottomNavigationBar _navigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kAccent,
                  width: 2
                )
              )
            ),
            child: Text('Home', style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          )
        ),

        BottomNavigationBarItem(
          label: 'calendar',
          icon: Icon(Icons.calendar_today,size: 22,)
        ),

        BottomNavigationBarItem(
          label: 'bookmark',
          icon: Icon(Icons.bookmark_border_outlined,size: 22,)
        ),

        BottomNavigationBarItem(
          label: 'user',
          icon: Icon(Icons.person_outline,size: 22,)
        ),

      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text('Hello Thiago!', style: TextStyle(
          color: kFontLight,
          fontSize: 16
        ),),
      ),
      actions: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 10,right: 20),
              decoration: BoxDecoration(
                border: Border.all(color: kFontLight.withOpacity(0.3),width: 2),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(Icons.notifications_outlined,color: kFont.withOpacity(0.6),),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle,
                ),
              )
              )
          ],
        )
      ],
    );
  }
}