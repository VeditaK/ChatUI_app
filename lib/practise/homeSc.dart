import 'package:chat_ui/home_screen.dart';
import 'package:chat_ui/widgets/favorite_contacts.dart';
import 'package:chat_ui/widgets/recent_chats.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/widgets/category_selector.dart';

class HomeScreen extends StatefulWidget{
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(icon:Icon(
          Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: (){},

        
        ),
        title: Align(alignment: Alignment.center,
        child: Text
        ("Chats",
        style:TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,



        ),
        ),

        
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: (Icon(Icons.search)
            
            ),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          

        ],
      ),


    );
  }
}
