

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_booking_app/next_1.dart';

class Splitscreen extends StatefulWidget {
  const Splitscreen({super.key});

  @override
  State<Splitscreen> createState() => _SplitscreenState();
}

class _SplitscreenState extends State<Splitscreen> {
  
  @override
  void  initState(){
    super.initState();
  navigatetologin();
    
  }

  navigatetologin() async {
   await Future.delayed(const Duration(seconds: 3));

   // ignore: use_build_context_synchronously
   Navigator.push(context, MaterialPageRoute(builder: (context) => const Next1(),));
  }


// Future<void>splash()async{
//   Timer(Duration(seconds: 3),()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
//     return Next1();
//   })));
// }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // child: Image.asset("Assets/iPhone 13/Rectangle 4.png"),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Rectangle 4.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 300,
              width: 350,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome To",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "Bolu",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 80,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "The Best hotel Booking in the Century to\nAccompany your Vacation",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
