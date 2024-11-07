import 'package:flutter/material.dart';
import 'package:hotel_booking_app/customtext.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
      
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.save_alt_outlined))
      ],

      leading: Image.asset("Assets/Group 83.png"),
      title: Text("Bolu",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
     ),

     body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello, Kezia",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

      SearchBar(
        leading: Icon(Icons.search),
        hintText: "Search",
        trailing: [
          Icon(Icons.more_vert)
        ],
        
      )
          
        
      ],
     ),




    );
  }
}