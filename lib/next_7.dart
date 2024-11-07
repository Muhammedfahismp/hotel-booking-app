import 'package:flutter/material.dart';
import 'package:hotel_booking_app/next_8.dart';
import 'package:hotel_booking_app/next_9.dart';

class Next7 extends StatefulWidget {
  const Next7({super.key});

  @override
  State<Next7> createState() => _Next7State();
}

class _Next7State extends State<Next7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("Assets/Rectangle 7.png")
                  ],
                ),
              ),
              const Positioned(
                bottom: 30,
                child: Column(
                  children: [
                    Text("  Travel \n  Made Easy \n  In Your \n  Hands",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold
                    ),)
                  ],
                ))
            ],
          ),

          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua."),

          Container(
            height: 20,
            width: 80,
            color: Colors.amber,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Next8(),));
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