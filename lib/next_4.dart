import 'package:flutter/material.dart';
import 'package:hotel_booking_app/next_5.dart';

class Next4 extends StatefulWidget {
  const Next4({super.key});

  @override
  State<Next4> createState() => _Next4State();
}

class _Next4State extends State<Next4> {

  @override

 void initState() {
   super.initState();
   splash();
    
  }

  splash() async {
   await Future.delayed(const Duration(seconds: 3));
   // ignore: use_build_context_synchronously
   Navigator.push(context, MaterialPageRoute(builder: (context) => const Next5(),));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(image: AssetImage("Assets/13 Pro - 11.png"),fit: BoxFit.cover,),
      ),
    );
  }
}