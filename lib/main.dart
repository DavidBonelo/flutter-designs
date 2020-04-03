import 'package:flutter/material.dart';
import 'package:flutter_designs/pages/basico_page.dart';
import 'package:flutter_designs/pages/scroll_page.dart';
import 'package:flutter_designs/pages/grid_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseños',
      initialRoute: 'basico',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'grid'   : (BuildContext context) => GridPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}