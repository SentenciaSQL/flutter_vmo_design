import 'package:flutter/material.dart';

class CustomStyles {

  //Gradient Color
  final colors = <Color>[Color(0xff00549D), Color(0xff002375)];

  //Begin Header Box Styles
  //Box header style
  final headerStyle =  TextStyle(fontWeight: FontWeight.normal, color: Color(0xffFCF201), fontSize: 20);
  final headerBoder = Border(bottom: BorderSide(width: 2.0, color: Color(0xFF566CA7)));
  //End Header Box Styles
  
  //Begin Box Data Styles
  //Box Data Border
  final boxDataStyle = BoxDecoration(
    border: Border(
      top: BorderSide(width: 2.0, color: Color(0xFF566CA7)),
      left: BorderSide(width: 2.0, color: Color(0xFF566CA7)),
      right: BorderSide(width: 2.0, color: Color(0xFF566CA7)),
      bottom: BorderSide(width: 2.0, color: Color(0xFF566CA7))
    )
  );
  final boxDataTextStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20);
  //END Box Data Styles

  // Primary color
  final primaryColor = Color(0xff002375);

  // Secondary color
  final secondaryColor = Color(0xffFCF201);

  // Item Slide Styles
  final itemStyle = Border(
    top: BorderSide(width: 2.0, color: Color(0xffFCF201)),
    left: BorderSide(width: 2.0, color: Color(0xffFCF201)),
    right: BorderSide(width: 2.0, color: Color(0xffFCF201)),
    bottom: BorderSide(width: 2.0, color: Color(0xffFCF201))
  );
  

}