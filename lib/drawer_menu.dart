import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget{
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Başlık"),accountEmail: Text("sahin863@gmail.com"),
              decoration: BoxDecoration(),
              currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcShtI4Oqp7Jpl92QbFo2Mh_Q9JxPypeRmmd5_XZs9FDj5QyDamP"),
            )
          ],
        ),
      );
  }
}