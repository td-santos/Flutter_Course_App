import 'package:flutter/material.dart';
import 'package:flutter_course_app/constants/colors.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;

  Module(
     this.iconBorder,
     this.iconBg,
     this.iconColor,
     this.icon,
     this.title,
     this.desc,
     this.moduleBorder,
     this.moduleBg,
     this.buttonColor,
     this.buttonFont,
     this.time,
     this.lesson,
  );

  static List<Module> generateModules(){
    return [
      Module(
        kAccent, 
        kAccent, 
        Colors.white, 
        Icons.play_arrow_rounded, 
        'Module 1', 'How it all started.\nExplanation.', 
        kPrimaryLight, 
        kPrimaryLight, 
        kPrimary, 
        kPrymaryDark, 
        '22 min', 
        '2 lessons'
      ),

      Module(
        kFontLight.withOpacity(0.3), 
        Colors.white, 
        kFontLight.withOpacity(0.7), 
        Icons.lock_outline_rounded, 
        'Module 2', 'How it all started.\nExplanation.', 
        kPrimaryLight, 
        Colors.white, 
        Colors.grey.withOpacity(0.2), 
        Colors.grey, 
        '12 min', 
        '2 lessons'
      ),
    ];
  }

  

}
