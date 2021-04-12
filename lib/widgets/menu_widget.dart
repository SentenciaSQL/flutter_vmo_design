import 'package:flutter/material.dart';
import 'package:flutter_vmo_v3/pages/servicios_page.dart';

class WidgetMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final String pageRoute = ModalRoute.of(context).settings.name;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 91.0,
            child: DrawerHeader(
              child: Container(),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
          ),
          ListTile(
            title: Text('Servicios'),
            onTap: () => (ServiciosPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, ServiciosPage.routeName) : null,
          )
        ],
      ),
    );
  }
}
