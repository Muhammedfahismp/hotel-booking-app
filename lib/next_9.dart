import 'package:flutter/material.dart';
import 'package:hotel_booking_app/next_10.dart';

class Next9 extends StatefulWidget {
  const Next9({super.key});

  @override
  State<Next9> createState() => _Next9State();
}

class _Next9State extends State<Next9> {

  @override
  void initState() {
    
    super.initState();
    splash();
  }

  splash() async {
    await Future.delayed( const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Next10(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(image: AssetImage("Assets/13 Pro - 12.png"),fit: BoxFit.cover,),
      ),
    );
  }
}