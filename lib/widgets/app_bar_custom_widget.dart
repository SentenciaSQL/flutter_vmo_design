import 'package:flutter/material.dart';
import 'package:gradients/gradients.dart';

class AppBarCustomWidget extends StatelessWidget implements PreferredSizeWidget{
  final String pageName;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  const AppBarCustomWidget(this.pageName, this._scaffoldKey);
  
  @override
  Widget build(BuildContext context) {
    final colors = <Color>[Color(0xff00549D), Color(0xff002375)];
   
    
    return AppBar(
      title: Text(this.pageName, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFCF201))),
      leading: IconButton(
        icon: Icon(Icons.menu, size: 35, color: Color(0xffFCF201)),
        onPressed: () => this._scaffoldKey.currentState.openDrawer(),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradientPainter(
            colors: colors
          )
        ),
      ),
      actions: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: Image.asset('assets/logo_nav_ee.png'),
          )
      ],
    );
    
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
