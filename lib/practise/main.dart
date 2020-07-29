import 'package:flutter/material.dart';
import '../home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends   StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chat Ui",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Color(0xFFFEF9EB)
      ),
      home: HomeScreen(),
      
    );
  }
}