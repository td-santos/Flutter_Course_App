import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';
import 'package:flutter_course_app/models/module.dart';
import 'package:flutter_course_app/screens/detail/widget/course_module.dart';

class CourseProgress extends StatelessWidget {

  final moduleList = Module.generateModules();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('The progress',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kFont
              ),),
              Row(
                children: [
                  Icon(Icons.grid_on_rounded, size: 25,color: Colors.grey,),
                  SizedBox(width: 15,),
                  Icon(Icons.list, size: 35,)
                ],
              )
            ],
          ),
          SizedBox(height: 15,),
          ...moduleList.map((e) => CourseModule(module: e,)).toList()
        ],
      ),
    );
  }
}