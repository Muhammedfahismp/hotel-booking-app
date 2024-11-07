import 'package:flutter/material.dart';
import 'package:hotel_booking_app/next_3.dart';
import 'package:hotel_booking_app/next_9.dart';

class Next2 extends StatelessWidget {
  const Next2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: const Image(image: AssetImage("Assets/Rectangle 12 (1).png"),fit: BoxFit.cover,),
          ),

           const Text(" Find The Best Hotel For \n         Your Vecation",style: TextStyle(fontSize: 30,fontWeight:  FontWeight.w500,),),

          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore et \n                        dolore magna aliqua."),

          Container(
            height: 20,
            width: 80,
            color: Colors.amber,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Next3(),));
              },
              child: Container(
                height: 45,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(child: Text("Next",style: TextStyle(color: Colors.white),)),
              ),
            ),
          ),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const Next9(),));
              },
              child: Container(
                height: 45,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 226, 209),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(child: Text("Skip",style: TextStyle(color: Colors.green),)),
              ),
            ),
          ),
 
        ],
      ),
    );
  }
}