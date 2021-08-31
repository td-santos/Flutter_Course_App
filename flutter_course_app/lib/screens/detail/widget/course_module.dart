import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';
import 'package:flutter_course_app/models/module.dart';

class CourseModule extends StatelessWidget {
  final Module module;
  const CourseModule({Key key, this.module}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10),
      height: 180,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: module.iconBg,
                        border: Border.all(color: module.iconBorder, width: 2),
                        shape: BoxShape.circle),
                    child: Icon(
                      module.icon,
                      color: module.iconColor,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: List.generate(20,(index) => Expanded(
                          child: Container(
                            width: 2,
                            color: index % 2 == 0
                                ? Colors.transparent
                                : module.iconBorder,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: module.moduleBorder,width: 2),
                  color: module.moduleBg,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(module.title, style: TextStyle(
                          color: kFontLight,
                          fontWeight: FontWeight.bold
                        ),),
                        Icon(Icons.more_horiz,color: kFontLight,),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(module.desc,style: TextStyle(
                      fontSize: 18,
                      color: kFont.withOpacity(0.7),
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        _buildButton(Icons.access_time, module.time),
                        SizedBox(width: 10,),
                        _buildButton(Icons.bookmarks, module.lesson),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  _buildButton(IconData icon, String text){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
      decoration: BoxDecoration(
        color: module.buttonColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: module.buttonFont,),
          SizedBox(width: 5),
          Text(text, style: TextStyle(
            color: module.buttonFont,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}


