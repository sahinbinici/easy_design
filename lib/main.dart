import 'package:easy_designs/drawer_menu.dart';
import 'package:flutter/material.dart';

void main() => runApp(Homes());

class Homes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: MyHomePage(),
    );
    
  }

}



class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int secilenMenuItem;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Custom Fonts"),),backgroundColor: Colors.amber,
      body: Center(
            child: Text("Custom Fonts",style:TextStyle(fontSize: 24,fontFamily:'ElYazisi')),
          ),
          bottomNavigationBar: Theme(
            data: ThemeData(
              canvasColor: Colors.cyan,
              primaryColor: Colors.orange
            ),
                      child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Ana Sayfa"),backgroundColor: Colors.amber),
                BottomNavigationBarItem(icon: Icon(Icons.account_balance),title: Text("Hesap"),backgroundColor: Colors.yellowAccent),
                BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("Arama"),),
                BottomNavigationBarItem(icon: Icon(Icons.security),title: Text("Güvenlik"))
              ],
              type: BottomNavigationBarType.shifting,
              currentIndex: secilenMenuItem,
              onTap: (index){
                secilenMenuItem=index;
              },
            ),
          ),
    );
  }
}