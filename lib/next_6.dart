import 'package:flutter/material.dart';
import 'package:hotel_booking_app/next_7.dart';
import 'package:hotel_booking_app/next_9.dart';

class Next6 extends StatefulWidget {
  const Next6({super.key});

  @override
  State<Next6> createState() => _Next6State();
}

class _Next6State extends State<Next6> {
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
                // child: Image(image: AssetImage("Assets/Rectangle 1.png"),fit: BoxFit.cover,),
          
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("Assets/Rectangle 1.png",)
          
                  ],
                ),
                // decoration: const BoxDecoration(
                //   color: Colors.amber,
                //   image: DecorationImage(image: AssetImage("Assets/Rectangle 1.png"),)
                // ),
              
              ),
              const Positioned(
                bottom: 30,
                child: Column(
                  children: [
                    Text(" Let's \n Have The \n Best \n Vacation \n With Us",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold
                    ),),
                   
          
                  ],
                )
                // Container(
                //   width: 200,
                //   height: 300,
                //   color: Colors.blue,
                  
                // ),
                )
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Next7(),));
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