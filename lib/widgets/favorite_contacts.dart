import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

import '../chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10),
      child: Column(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                          Text("Favourite Contacts", style: TextStyle(
                            color:Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            ),
                          ),
                          IconButton(icon: Icon(Icons.more_horiz,
                          ),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: (){

                          },
                          )

                        ],
                        ),
          ),
          Container(
            height: 120,
            
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder:(BuildContext context,int index){
                return GestureDetector(
                  
                       onTap:()=> Navigator.push
                       (context, 
                       MaterialPageRoute(
                         builder: (_) => ChatScreen(user:favorites[index]
                         ),
                       ),
                       ),
                                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(height: 6.0),
                        Text(favorites[index].name,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],
                    ),
                  ),
                );
              },


              
            )
          ),
        ],
      ),
    );
      
    
  }
}