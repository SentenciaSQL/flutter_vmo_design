import 'package:flutter/material.dart';
import 'package:flutter_vmo_v3/styles/custom_styles.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {

  CustomStyles cStyles = new CustomStyles();

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 3.0, color: Color(0xFF566CA7)))
        ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: cStyles.secondaryColor,
        backgroundColor: Color(0xff003784),
        unselectedItemColor: cStyles.secondaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_forwarded_rounded, size: 35.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, size: 35.0),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 35.0),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outgoing_mail, size: 35.0),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on, size: 35.0),
            label: ''
          ),
        ],
      ),
    );
  }
}
